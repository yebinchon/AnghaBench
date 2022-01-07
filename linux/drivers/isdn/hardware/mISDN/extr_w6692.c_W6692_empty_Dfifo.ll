; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_empty_Dfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_empty_Dfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i8*, i32, i64, %struct.dchannel }
%struct.dchannel = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: empty_Dfifo %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: D receive out of memory\0A\00", align 1
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: empty_Dfifo overrun %d\0A\00", align 1
@W_D_RFIFO = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_DFIFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"D-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*, i32)* @W6692_empty_Dfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_empty_Dfifo(%struct.w6692_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dchannel*, align 8
  %6 = alloca i32*, align 8
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %8 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %7, i32 0, i32 3
  store %struct.dchannel* %8, %struct.dchannel** %5, align 8
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %10 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  %14 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %15 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %2
  %19 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %20 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.TYPE_3__* @mI_alloc_skb(i32 %22, i32 %23)
  %25 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %26 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %25, i32 0, i32 1
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %28 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %18
  %32 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %33 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %37 = load i32, i32* @W_D_CMDR, align 4
  %38 = load i32, i32* @W_D_CMDR_RACK, align 4
  %39 = call i32 @WriteW6692(%struct.w6692_hw* %36, i32 %37, i32 %38)
  br label %107

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %43 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %50 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %41
  %54 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %55 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %58 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %63)
  %65 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %66 = load i32, i32* @W_D_CMDR, align 4
  %67 = load i32, i32* @W_D_CMDR_RACK, align 4
  %68 = call i32 @WriteW6692(%struct.w6692_hw* %65, i32 %66, i32 %67)
  br label %107

69:                                               ; preds = %41
  %70 = load %struct.dchannel*, %struct.dchannel** %5, align 8
  %71 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32* @skb_put(%struct.TYPE_3__* %72, i32 %73)
  store i32* %74, i32** %6, align 8
  %75 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %76 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @W_D_RFIFO, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @insb(i64 %79, i32* %80, i32 %81)
  %83 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %84 = load i32, i32* @W_D_CMDR, align 4
  %85 = load i32, i32* @W_D_CMDR_RACK, align 4
  %86 = call i32 @WriteW6692(%struct.w6692_hw* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @debug, align 4
  %88 = load i32, i32* @DEBUG_HW_DFIFO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %69
  %92 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %93 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %96 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @snprintf(i32 %94, i32 63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %97, i32 %98)
  %100 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %101 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @print_hex_dump_bytes(i32 %102, i32 %103, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %31, %53, %91, %69
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @mI_alloc_skb(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32* @skb_put(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @insb(i64, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
