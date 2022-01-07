; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c___ppl_exit_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c___ppl_exit_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppl_conf = type { i32, i32, i32, i32, %struct.ppl_conf*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MD_HAS_PPL = common dso_local global i32 0, align 4
@MD_HAS_MULTIPLE_PPLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppl_conf*)* @__ppl_exit_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ppl_exit_log(%struct.ppl_conf* %0) #0 {
  %2 = alloca %struct.ppl_conf*, align 8
  store %struct.ppl_conf* %0, %struct.ppl_conf** %2, align 8
  %3 = load i32, i32* @MD_HAS_PPL, align 4
  %4 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %5 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %4, i32 0, i32 5
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @clear_bit(i32 %3, i32* %7)
  %9 = load i32, i32* @MD_HAS_MULTIPLE_PPLS, align 4
  %10 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %11 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @clear_bit(i32 %9, i32* %13)
  %15 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %16 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %15, i32 0, i32 4
  %17 = load %struct.ppl_conf*, %struct.ppl_conf** %16, align 8
  %18 = call i32 @kfree(%struct.ppl_conf* %17)
  %19 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %20 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %19, i32 0, i32 3
  %21 = call i32 @bioset_exit(i32* %20)
  %22 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %23 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %22, i32 0, i32 2
  %24 = call i32 @bioset_exit(i32* %23)
  %25 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %26 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %25, i32 0, i32 1
  %27 = call i32 @mempool_exit(i32* %26)
  %28 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %29 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kmem_cache_destroy(i32 %30)
  %32 = load %struct.ppl_conf*, %struct.ppl_conf** %2, align 8
  %33 = call i32 @kfree(%struct.ppl_conf* %32)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.ppl_conf*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
