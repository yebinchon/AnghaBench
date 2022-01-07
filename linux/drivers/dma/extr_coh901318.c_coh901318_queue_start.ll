; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_desc = type { i32, i32, i32 }
%struct.coh901318_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coh901318_desc* (%struct.coh901318_chan*)* @coh901318_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coh901318_desc* @coh901318_queue_start(%struct.coh901318_chan* %0) #0 {
  %2 = alloca %struct.coh901318_chan*, align 8
  %3 = alloca %struct.coh901318_desc*, align 8
  store %struct.coh901318_chan* %0, %struct.coh901318_chan** %2, align 8
  %4 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %5 = call %struct.coh901318_desc* @coh901318_first_queued(%struct.coh901318_chan* %4)
  store %struct.coh901318_desc* %5, %struct.coh901318_desc** %3, align 8
  %6 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  %7 = icmp ne %struct.coh901318_desc* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  %10 = call i32 @coh901318_desc_remove(%struct.coh901318_desc* %9)
  %11 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %12 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %14 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  %15 = call i32 @coh901318_desc_submit(%struct.coh901318_chan* %13, %struct.coh901318_desc* %14)
  %16 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %17 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  %18 = getelementptr inbounds %struct.coh901318_desc, %struct.coh901318_desc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @coh901318_set_conf(%struct.coh901318_chan* %16, i32 %19)
  %21 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %22 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  %23 = getelementptr inbounds %struct.coh901318_desc, %struct.coh901318_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @coh901318_set_ctrl(%struct.coh901318_chan* %21, i32 %24)
  %26 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %27 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  %28 = getelementptr inbounds %struct.coh901318_desc, %struct.coh901318_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @coh901318_prep_linked_list(%struct.coh901318_chan* %26, i32 %29)
  %31 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %32 = call i32 @coh901318_start(%struct.coh901318_chan* %31)
  br label %33

33:                                               ; preds = %8, %1
  %34 = load %struct.coh901318_desc*, %struct.coh901318_desc** %3, align 8
  ret %struct.coh901318_desc* %34
}

declare dso_local %struct.coh901318_desc* @coh901318_first_queued(%struct.coh901318_chan*) #1

declare dso_local i32 @coh901318_desc_remove(%struct.coh901318_desc*) #1

declare dso_local i32 @coh901318_desc_submit(%struct.coh901318_chan*, %struct.coh901318_desc*) #1

declare dso_local i32 @coh901318_set_conf(%struct.coh901318_chan*, i32) #1

declare dso_local i32 @coh901318_set_ctrl(%struct.coh901318_chan*, i32) #1

declare dso_local i32 @coh901318_prep_linked_list(%struct.coh901318_chan*, i32) #1

declare dso_local i32 @coh901318_start(%struct.coh901318_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
