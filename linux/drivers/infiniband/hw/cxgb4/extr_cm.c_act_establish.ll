; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_act_establish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_act_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tid_info* }
%struct.tid_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { i32, %struct.TYPE_10__, i64, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cpl_act_establish = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"ep %p tid %u snd_isn %u rcv_isn %u\0A\00", align 1
@ACT_ESTAB = common dso_local global i32 0, align 4
@mpa_rev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @act_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act_establish(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.c4iw_ep*, align 8
  %7 = alloca %struct.cpl_act_establish*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tid_info*, align 8
  %12 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.cpl_act_establish* @cplhdr(%struct.sk_buff* %13)
  store %struct.cpl_act_establish* %14, %struct.cpl_act_establish** %7, align 8
  %15 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %16 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call zeroext i16 @ntohs(i32 %17)
  store i16 %18, i16* %8, align 2
  %19 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %20 = call i32 @GET_TID(%struct.cpl_act_establish* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %22 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohl(i32 %23)
  %25 = call i32 @TID_TID_G(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %27 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.tid_info*, %struct.tid_info** %29, align 8
  store %struct.tid_info* %30, %struct.tid_info** %11, align 8
  %31 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.c4iw_ep* @lookup_atid(%struct.tid_info* %31, i32 %32)
  store %struct.c4iw_ep* %33, %struct.c4iw_ep** %6, align 8
  %34 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %37 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be32_to_cpu(i32 %38)
  %40 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %41 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @be32_to_cpu(i32 %42)
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %34, i32 %35, i8* %39, i8* %43)
  %45 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %46 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %50 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dst_confirm(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %55 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %57 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %60 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @cxgb4_insert_tid(%struct.tid_info* %56, %struct.c4iw_ep* %57, i32 %58, i32 %63)
  %65 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %66 = call i32 @insert_ep_tid(%struct.c4iw_ep* %65)
  %67 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %68 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @be32_to_cpu(i32 %69)
  %71 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %72 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %7, align 8
  %74 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @be32_to_cpu(i32 %75)
  %77 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %78 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i16, i16* %8, align 2
  %80 = call i32 @TCPOPT_SND_WSCALE_G(i16 zeroext %79)
  %81 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %82 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %84 = load i16, i16* %8, align 2
  %85 = call i32 @set_emss(%struct.c4iw_ep* %83, i16 zeroext %84)
  %86 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %87 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @xa_erase_irq(i32* %90, i32 %91)
  %93 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @cxgb4_free_atid(%struct.tid_info* %93, i32 %94)
  %96 = load i32, i32* @ACT_ESTAB, align 4
  %97 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %98 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = call i32 @set_bit(i32 %96, i32* %99)
  %101 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %102 = call i32 @send_flowc(%struct.c4iw_ep* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %2
  br label %129

106:                                              ; preds = %2
  %107 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %108 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @send_mpa_req(%struct.c4iw_ep* %112, %struct.sk_buff* %113, i32 1)
  store i32 %114, i32* %12, align 4
  br label %120

115:                                              ; preds = %106
  %116 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = load i32, i32* @mpa_rev, align 4
  %119 = call i32 @send_mpa_req(%struct.c4iw_ep* %116, %struct.sk_buff* %117, i32 %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %115, %111
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %129

124:                                              ; preds = %120
  %125 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %126 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  store i32 0, i32* %3, align 4
  br label %141

129:                                              ; preds = %123, %105
  %130 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %131 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @connect_reply_upcall(%struct.c4iw_ep* %134, i32 %136)
  %138 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i32 @c4iw_ep_disconnect(%struct.c4iw_ep* %138, i32 0, i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %129, %124
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.cpl_act_establish* @cplhdr(%struct.sk_buff*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_act_establish*) #1

declare dso_local i32 @TID_TID_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.c4iw_ep* @lookup_atid(%struct.tid_info*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32, i8*, i8*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @cxgb4_insert_tid(%struct.tid_info*, %struct.c4iw_ep*, i32, i32) #1

declare dso_local i32 @insert_ep_tid(%struct.c4iw_ep*) #1

declare dso_local i32 @TCPOPT_SND_WSCALE_G(i16 zeroext) #1

declare dso_local i32 @set_emss(%struct.c4iw_ep*, i16 zeroext) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @cxgb4_free_atid(%struct.tid_info*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @send_flowc(%struct.c4iw_ep*) #1

declare dso_local i32 @send_mpa_req(%struct.c4iw_ep*, %struct.sk_buff*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @connect_reply_upcall(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @c4iw_ep_disconnect(%struct.c4iw_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
