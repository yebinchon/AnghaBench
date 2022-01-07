; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_mbox_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_mbox_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cmdq_pkt = type { i64, i64 }
%struct.cmdq_thread = type { i32, i64, i64, i64 }
%struct.cmdq = type { i32, i32 }
%struct.cmdq_task = type { i32, i64, %struct.cmdq_pkt*, %struct.cmdq_thread*, %struct.cmdq* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMDQ_THR_CURR_ADDR = common dso_local global i64 0, align 8
@CMDQ_THR_END_ADDR = common dso_local global i64 0, align 8
@CMDQ_THR_PRIORITY = common dso_local global i64 0, align 8
@CMDQ_THR_IRQ_EN = common dso_local global i64 0, align 8
@CMDQ_THR_IRQ_ENABLE = common dso_local global i64 0, align 8
@CMDQ_THR_ENABLED = common dso_local global i64 0, align 8
@CMDQ_THR_ENABLE_TASK = common dso_local global i64 0, align 8
@CMDQ_INST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @cmdq_mbox_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_mbox_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmdq_pkt*, align 8
  %7 = alloca %struct.cmdq_thread*, align 8
  %8 = alloca %struct.cmdq*, align 8
  %9 = alloca %struct.cmdq_task*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cmdq_pkt*
  store %struct.cmdq_pkt* %13, %struct.cmdq_pkt** %6, align 8
  %14 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %15 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cmdq_thread*
  store %struct.cmdq_thread* %17, %struct.cmdq_thread** %7, align 8
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %19 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cmdq* @dev_get_drvdata(i32 %22)
  store %struct.cmdq* %23, %struct.cmdq** %8, align 8
  %24 = load %struct.cmdq*, %struct.cmdq** %8, align 8
  %25 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.cmdq_task* @kzalloc(i32 40, i32 %28)
  store %struct.cmdq_task* %29, %struct.cmdq_task** %9, align 8
  %30 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %31 = icmp ne %struct.cmdq_task* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %218

35:                                               ; preds = %2
  %36 = load %struct.cmdq*, %struct.cmdq** %8, align 8
  %37 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %38 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %37, i32 0, i32 4
  store %struct.cmdq* %36, %struct.cmdq** %38, align 8
  %39 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %40 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %43 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %46 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %48 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %49 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %48, i32 0, i32 3
  store %struct.cmdq_thread* %47, %struct.cmdq_thread** %49, align 8
  %50 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %51 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %52 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %51, i32 0, i32 2
  store %struct.cmdq_pkt* %50, %struct.cmdq_pkt** %52, align 8
  %53 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %54 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %53, i32 0, i32 0
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %35
  %58 = load %struct.cmdq*, %struct.cmdq** %8, align 8
  %59 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @clk_enable(i32 %60)
  %62 = icmp slt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.cmdq*, %struct.cmdq** %8, align 8
  %66 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %67 = call i64 @cmdq_thread_reset(%struct.cmdq* %65, %struct.cmdq_thread* %66)
  %68 = icmp slt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %72 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %75 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CMDQ_THR_CURR_ADDR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i64 %73, i64 %78)
  %80 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %81 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %84 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %88 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CMDQ_THR_END_ADDR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i64 %86, i64 %91)
  %93 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %94 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %97 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CMDQ_THR_PRIORITY, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i64 %95, i64 %100)
  %102 = load i64, i64* @CMDQ_THR_IRQ_EN, align 8
  %103 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %104 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CMDQ_THR_IRQ_ENABLE, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i64 %102, i64 %107)
  %109 = load i64, i64* @CMDQ_THR_ENABLED, align 8
  %110 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %111 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CMDQ_THR_ENABLE_TASK, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i64 %109, i64 %114)
  br label %212

116:                                              ; preds = %35
  %117 = load %struct.cmdq*, %struct.cmdq** %8, align 8
  %118 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %119 = call i64 @cmdq_thread_suspend(%struct.cmdq* %117, %struct.cmdq_thread* %118)
  %120 = icmp slt i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @WARN_ON(i32 %121)
  %123 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %124 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CMDQ_THR_CURR_ADDR, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i64 @readl(i64 %127)
  store i64 %128, i64* %10, align 8
  %129 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %130 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CMDQ_THR_END_ADDR, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i64 @readl(i64 %133)
  store i64 %134, i64* %11, align 8
  %135 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %136 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %116
  %140 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %141 = call i32 @cmdq_thread_is_in_wfe(%struct.cmdq_thread* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %164, label %143

143:                                              ; preds = %139
  %144 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %145 = call i32 @cmdq_thread_resume(%struct.cmdq_thread* %144)
  %146 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @cmdq_thread_wait_end(%struct.cmdq_thread* %146, i64 %147)
  %149 = load %struct.cmdq*, %struct.cmdq** %8, align 8
  %150 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %151 = call i64 @cmdq_thread_suspend(%struct.cmdq* %149, %struct.cmdq_thread* %150)
  %152 = icmp slt i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @WARN_ON(i32 %153)
  %155 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %156 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %159 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CMDQ_THR_CURR_ADDR, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i64 %157, i64 %162)
  br label %170

164:                                              ; preds = %139
  %165 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %166 = call i32 @cmdq_task_insert_into_thread(%struct.cmdq_task* %165)
  %167 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %168 = call i32 @cmdq_task_remove_wfe(%struct.cmdq_task* %167)
  %169 = call i32 (...) @smp_mb()
  br label %170

170:                                              ; preds = %164, %143
  br label %196

171:                                              ; preds = %116
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* @CMDQ_INST_SIZE, align 8
  %175 = sub i64 %173, %174
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %171
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* %11, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %177, %171
  %182 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %183 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %186 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CMDQ_THR_CURR_ADDR, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @writel(i64 %184, i64 %189)
  br label %195

191:                                              ; preds = %177
  %192 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %193 = call i32 @cmdq_task_insert_into_thread(%struct.cmdq_task* %192)
  %194 = call i32 (...) @smp_mb()
  br label %195

195:                                              ; preds = %191, %181
  br label %196

196:                                              ; preds = %195, %170
  %197 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %198 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %201 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %199, %202
  %204 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %205 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CMDQ_THR_END_ADDR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writel(i64 %203, i64 %208)
  %210 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %211 = call i32 @cmdq_thread_resume(%struct.cmdq_thread* %210)
  br label %212

212:                                              ; preds = %196, %57
  %213 = load %struct.cmdq_task*, %struct.cmdq_task** %9, align 8
  %214 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %213, i32 0, i32 0
  %215 = load %struct.cmdq_thread*, %struct.cmdq_thread** %7, align 8
  %216 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %215, i32 0, i32 0
  %217 = call i32 @list_move_tail(i32* %214, i32* %216)
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %212, %32
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.cmdq* @dev_get_drvdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.cmdq_task* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @clk_enable(i32) #1

declare dso_local i64 @cmdq_thread_reset(%struct.cmdq*, %struct.cmdq_thread*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @cmdq_thread_suspend(%struct.cmdq*, %struct.cmdq_thread*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @cmdq_thread_is_in_wfe(%struct.cmdq_thread*) #1

declare dso_local i32 @cmdq_thread_resume(%struct.cmdq_thread*) #1

declare dso_local i32 @cmdq_thread_wait_end(%struct.cmdq_thread*, i64) #1

declare dso_local i32 @cmdq_task_insert_into_thread(%struct.cmdq_task*) #1

declare dso_local i32 @cmdq_task_remove_wfe(%struct.cmdq_task*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
