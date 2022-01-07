; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_tear_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_tear_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"consistent tear down (graceful:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, i32)* @pblk_tear_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_tear_down(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.pblk*, %struct.pblk** %3, align 8
  %9 = call i32 @__pblk_pipeline_flush(%struct.pblk* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = call i32 @__pblk_pipeline_stop(%struct.pblk* %11)
  %13 = load %struct.pblk*, %struct.pblk** %3, align 8
  %14 = call i32 @pblk_writer_stop(%struct.pblk* %13)
  %15 = load %struct.pblk*, %struct.pblk** %3, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 1
  %17 = call i32 @pblk_rb_sync_l2p(i32* %16)
  %18 = load %struct.pblk*, %struct.pblk** %3, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  %20 = call i32 @pblk_rl_free(i32* %19)
  %21 = load %struct.pblk*, %struct.pblk** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pblk_debug(%struct.pblk* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @__pblk_pipeline_flush(%struct.pblk*) #1

declare dso_local i32 @__pblk_pipeline_stop(%struct.pblk*) #1

declare dso_local i32 @pblk_writer_stop(%struct.pblk*) #1

declare dso_local i32 @pblk_rb_sync_l2p(i32*) #1

declare dso_local i32 @pblk_rl_free(i32*) #1

declare dso_local i32 @pblk_debug(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
