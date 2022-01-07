; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_pass_establish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_pass_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_2__, i32, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cpl_pass_establish = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ep %p hwtid %u tcp_opt 0x%02x\0A\00", align 1
@MPA_REQ_WAIT = common dso_local global i32 0, align 4
@PASS_ESTAB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @pass_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pass_establish(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.c4iw_ep*, align 8
  %6 = alloca %struct.cpl_pass_establish*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.cpl_pass_establish* @cplhdr(%struct.sk_buff* %10)
  store %struct.cpl_pass_establish* %11, %struct.cpl_pass_establish** %6, align 8
  %12 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %13 = call i32 @GET_TID(%struct.cpl_pass_establish* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %15 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %18, i32 %19)
  store %struct.c4iw_ep* %20, %struct.c4iw_ep** %5, align 8
  %21 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %22 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %23 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, %struct.c4iw_ep*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %21, i32 %24)
  %26 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %27 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @be32_to_cpu(i32 %28)
  %30 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %31 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %33 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @be32_to_cpu(i32 %34)
  %36 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %37 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @TCPOPT_SND_WSCALE_G(i32 %38)
  %40 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %41 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, %struct.c4iw_ep*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %42, i32 %43, i32 %44)
  %46 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @set_emss(%struct.c4iw_ep* %46, i32 %47)
  %49 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %50 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dst_confirm(i32 %51)
  %53 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %54 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load i32, i32* @MPA_REQ_WAIT, align 4
  %58 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %59 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %62 = call i32 @start_ep_timer(%struct.c4iw_ep* %61)
  %63 = load i32, i32* @PASS_ESTAB, align 4
  %64 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %65 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %63, i32* %66)
  %68 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %69 = call i32 @send_flowc(%struct.c4iw_ep* %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %71 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %2
  %77 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @c4iw_ep_disconnect(%struct.c4iw_ep* %77, i32 1, i32 %78)
  br label %80

80:                                               ; preds = %76, %2
  %81 = load %struct.c4iw_ep*, %struct.c4iw_ep** %5, align 8
  %82 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %81, i32 0, i32 0
  %83 = call i32 @c4iw_put_ep(%struct.TYPE_2__* %82)
  ret i32 0
}

declare dso_local %struct.cpl_pass_establish* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_pass_establish*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32, ...) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @TCPOPT_SND_WSCALE_G(i32) #1

declare dso_local i32 @set_emss(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @start_ep_timer(%struct.c4iw_ep*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @send_flowc(%struct.c4iw_ep*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @c4iw_ep_disconnect(%struct.c4iw_ep*, i32, i32) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
