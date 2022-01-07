; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_pd_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_pd_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_partial_datagram = type { i32, i32, i32, i32*, i32, i32 }
%struct.net_device = type { i32 }
%struct.fwnet_peer = type { i32 }
%struct.fwnet_fragment_info = type { i32, i32, i32, i32*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwnet_partial_datagram* (%struct.net_device*, %struct.fwnet_peer*, i32, i32, i8*, i32, i32)* @fwnet_pd_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwnet_partial_datagram* @fwnet_pd_new(%struct.net_device* %0, %struct.fwnet_peer* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fwnet_partial_datagram*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.fwnet_peer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fwnet_partial_datagram*, align 8
  %17 = alloca %struct.fwnet_fragment_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store %struct.fwnet_peer* %1, %struct.fwnet_peer** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.fwnet_partial_datagram* @kmalloc(i32 32, i32 %18)
  store %struct.fwnet_partial_datagram* %19, %struct.fwnet_partial_datagram** %16, align 8
  %20 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %21 = icmp ne %struct.fwnet_partial_datagram* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %89

23:                                               ; preds = %7
  %24 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %25 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %24, i32 0, i32 5
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.fwnet_partial_datagram* @fwnet_frag_new(%struct.fwnet_partial_datagram* %27, i32 %28, i32 %29)
  %31 = bitcast %struct.fwnet_partial_datagram* %30 to %struct.fwnet_fragment_info*
  store %struct.fwnet_fragment_info* %31, %struct.fwnet_fragment_info** %17, align 8
  %32 = load %struct.fwnet_fragment_info*, %struct.fwnet_fragment_info** %17, align 8
  %33 = icmp eq %struct.fwnet_fragment_info* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %86

35:                                               ; preds = %23
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %38 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %41 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %43)
  %45 = add i32 %42, %44
  %46 = call i32* @dev_alloc_skb(i32 %45)
  %47 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %48 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %50 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %82

54:                                               ; preds = %35
  %55 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %56 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %58)
  %60 = call i32 @skb_reserve(i32* %57, i32 %59)
  %61 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %62 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @skb_put(i32* %63, i32 %64)
  %66 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %67 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %69 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add i32 %70, %71
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @memcpy(i32 %72, i8* %73, i32 %74)
  %76 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %77 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %76, i32 0, i32 2
  %78 = load %struct.fwnet_peer*, %struct.fwnet_peer** %10, align 8
  %79 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %78, i32 0, i32 0
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  store %struct.fwnet_partial_datagram* %81, %struct.fwnet_partial_datagram** %8, align 8
  br label %90

82:                                               ; preds = %53
  %83 = load %struct.fwnet_fragment_info*, %struct.fwnet_fragment_info** %17, align 8
  %84 = bitcast %struct.fwnet_fragment_info* %83 to %struct.fwnet_partial_datagram*
  %85 = call i32 @kfree(%struct.fwnet_partial_datagram* %84)
  br label %86

86:                                               ; preds = %82, %34
  %87 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %88 = call i32 @kfree(%struct.fwnet_partial_datagram* %87)
  br label %89

89:                                               ; preds = %86, %22
  store %struct.fwnet_partial_datagram* null, %struct.fwnet_partial_datagram** %8, align 8
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %8, align 8
  ret %struct.fwnet_partial_datagram* %91
}

declare dso_local %struct.fwnet_partial_datagram* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.fwnet_partial_datagram* @fwnet_frag_new(%struct.fwnet_partial_datagram*, i32, i32) #1

declare dso_local i32* @dev_alloc_skb(i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(i32*, i32) #1

declare dso_local i32 @skb_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fwnet_partial_datagram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
