; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_cq_post_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_cq_post_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cq_uk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cq_uk*, i32)* @i40iw_cq_post_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_cq_post_entries(%struct.i40iw_cq_uk* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_cq_uk*, align 8
  %4 = alloca i32, align 4
  store %struct.i40iw_cq_uk* %0, %struct.i40iw_cq_uk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @I40IW_RING_MOVE_TAIL_BY_COUNT(i32 %7, i32 %8)
  %10 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @I40IW_RING_GETCURRENT_HEAD(i32 %15)
  %17 = call i32 @set_64bit_val(i32 %12, i32 0, i32 %16)
  ret i32 0
}

declare dso_local i32 @I40IW_RING_MOVE_TAIL_BY_COUNT(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32, i32, i32) #1

declare dso_local i32 @I40IW_RING_GETCURRENT_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
