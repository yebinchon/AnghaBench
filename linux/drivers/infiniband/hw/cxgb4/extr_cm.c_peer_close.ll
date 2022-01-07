; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_peer_close = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.c4iw_qp_attributes = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@PEER_CLOSE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"waking up ep %p tid %u\0A\00", align 1
@C4IW_QP_STATE_CLOSING = common dso_local global i32 0, align 4
@C4IW_QP_ATTR_NEXT_STATE = common dso_local global i32 0, align 4
@C4IW_QP_STATE_IDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Bad endpoint state %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @peer_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_close(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_peer_close*, align 8
  %7 = alloca %struct.c4iw_ep*, align 8
  %8 = alloca %struct.c4iw_qp_attributes, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.cpl_peer_close* @cplhdr(%struct.sk_buff* %13)
  store %struct.cpl_peer_close* %14, %struct.cpl_peer_close** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.cpl_peer_close*, %struct.cpl_peer_close** %6, align 8
  %16 = call i32 @GET_TID(%struct.cpl_peer_close* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %17, i32 %18)
  store %struct.c4iw_ep* %19, %struct.c4iw_ep** %7, align 8
  %20 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %21 = icmp ne %struct.c4iw_ep* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %186

23:                                               ; preds = %2
  %24 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %25 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %26 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %24, i32 %27)
  %29 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %30 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dst_confirm(i32 %31)
  %33 = load i32, i32* @PEER_CLOSE, align 4
  %34 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %35 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = call i32 @set_bit(i32 %33, i32* %36)
  %38 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %39 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %43 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %159 [
    i32 128, label %46
    i32 129, label %50
    i32 130, label %58
    i32 131, label %74
    i32 133, label %90
    i32 136, label %118
    i32 135, label %119
    i32 132, label %123
    i32 134, label %158
  ]

46:                                               ; preds = %23
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %48 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %47, i32 0, i32 0
  %49 = call i32 @__state_set(%struct.TYPE_4__* %48, i32 135)
  br label %165

50:                                               ; preds = %23
  %51 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %52 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %51, i32 0, i32 0
  %53 = call i32 @__state_set(%struct.TYPE_4__* %52, i32 135)
  %54 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %55 = load i32, i32* @ECONNRESET, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @connect_reply_upcall(%struct.c4iw_ep* %54, i32 %56)
  br label %165

58:                                               ; preds = %23
  %59 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %60 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %59, i32 0, i32 0
  %61 = call i32 @__state_set(%struct.TYPE_4__* %60, i32 135)
  %62 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %63 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %64 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %62, i32 %65)
  %67 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %68 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ECONNRESET, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @c4iw_wake_up_noref(i32 %70, i32 %72)
  br label %165

74:                                               ; preds = %23
  %75 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %76 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %75, i32 0, i32 0
  %77 = call i32 @__state_set(%struct.TYPE_4__* %76, i32 135)
  %78 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %79 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %80 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %78, i32 %81)
  %83 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %84 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ECONNRESET, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @c4iw_wake_up_noref(i32 %86, i32 %88)
  br label %165

90:                                               ; preds = %23
  %91 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %92 = call i32 @start_ep_timer(%struct.c4iw_ep* %91)
  %93 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %94 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %93, i32 0, i32 0
  %95 = call i32 @__state_set(%struct.TYPE_4__* %94, i32 135)
  %96 = load i32, i32* @C4IW_QP_STATE_CLOSING, align 4
  %97 = getelementptr inbounds %struct.c4iw_qp_attributes, %struct.c4iw_qp_attributes* %8, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %99 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %105 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* @C4IW_QP_ATTR_NEXT_STATE, align 4
  %109 = call i32 @c4iw_modify_qp(i32 %103, %struct.TYPE_5__* %107, i32 %108, %struct.c4iw_qp_attributes* %8, i32 1)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @ECONNRESET, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %90
  %115 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %116 = call i32 @peer_close_upcall(%struct.c4iw_ep* %115)
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %114, %90
  br label %165

118:                                              ; preds = %23
  store i32 0, i32* %9, align 4
  br label %165

119:                                              ; preds = %23
  %120 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %121 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %120, i32 0, i32 0
  %122 = call i32 @__state_set(%struct.TYPE_4__* %121, i32 132)
  store i32 0, i32* %9, align 4
  br label %165

123:                                              ; preds = %23
  %124 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %125 = call i32 @stop_ep_timer(%struct.c4iw_ep* %124)
  %126 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %127 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %123
  %132 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %133 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = icmp ne %struct.TYPE_5__* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load i32, i32* @C4IW_QP_STATE_IDLE, align 4
  %139 = getelementptr inbounds %struct.c4iw_qp_attributes, %struct.c4iw_qp_attributes* %8, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %141 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %147 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* @C4IW_QP_ATTR_NEXT_STATE, align 4
  %151 = call i32 @c4iw_modify_qp(i32 %145, %struct.TYPE_5__* %149, i32 %150, %struct.c4iw_qp_attributes* %8, i32 1)
  br label %152

152:                                              ; preds = %137, %131, %123
  %153 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %154 = call i32 @close_complete_upcall(%struct.c4iw_ep* %153, i32 0)
  %155 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %156 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %155, i32 0, i32 0
  %157 = call i32 @__state_set(%struct.TYPE_4__* %156, i32 134)
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %165

158:                                              ; preds = %23
  store i32 0, i32* %9, align 4
  br label %165

159:                                              ; preds = %23
  %160 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %161 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %158, %152, %119, %118, %117, %74, %58, %50, %46
  %166 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %167 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i32 @c4iw_ep_disconnect(%struct.c4iw_ep* %173, i32 0, i32 %174)
  br label %176

176:                                              ; preds = %172, %165
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %181 = call i32 @release_ep_resources(%struct.c4iw_ep* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %184 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %183, i32 0, i32 0
  %185 = call i32 @c4iw_put_ep(%struct.TYPE_4__* %184)
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %22
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.cpl_peer_close* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_peer_close*) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__state_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @connect_reply_upcall(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @c4iw_wake_up_noref(i32, i32) #1

declare dso_local i32 @start_ep_timer(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_modify_qp(i32, %struct.TYPE_5__*, i32, %struct.c4iw_qp_attributes*, i32) #1

declare dso_local i32 @peer_close_upcall(%struct.c4iw_ep*) #1

declare dso_local i32 @stop_ep_timer(%struct.c4iw_ep*) #1

declare dso_local i32 @close_complete_upcall(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @c4iw_ep_disconnect(%struct.c4iw_ep*, i32, i32) #1

declare dso_local i32 @release_ep_resources(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
