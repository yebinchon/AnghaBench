; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_exit_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_exit_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.ppl_conf* }
%struct.ppl_conf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppl_exit_log(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca %struct.ppl_conf*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %4 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %5 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %4, i32 0, i32 0
  %6 = load %struct.ppl_conf*, %struct.ppl_conf** %5, align 8
  store %struct.ppl_conf* %6, %struct.ppl_conf** %3, align 8
  %7 = load %struct.ppl_conf*, %struct.ppl_conf** %3, align 8
  %8 = icmp ne %struct.ppl_conf* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ppl_conf*, %struct.ppl_conf** %3, align 8
  %11 = call i32 @__ppl_exit_log(%struct.ppl_conf* %10)
  %12 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %13 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %12, i32 0, i32 0
  store %struct.ppl_conf* null, %struct.ppl_conf** %13, align 8
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @__ppl_exit_log(%struct.ppl_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
