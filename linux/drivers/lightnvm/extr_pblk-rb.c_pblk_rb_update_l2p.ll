; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_pblk_rb_update_l2p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_pblk_rb_update_l2p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_rb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk_rb*, i32, i32, i32)* @pblk_rb_update_l2p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_rb_update_l2p(%struct.pblk_rb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pblk_rb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pblk_rb* %0, %struct.pblk_rb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %13 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %12, i32 0, i32 2
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %21 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pblk_rb_ring_space(%struct.pblk_rb* %15, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.pblk_rb*, %struct.pblk_rb** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @__pblk_rb_update_l2p(%struct.pblk_rb* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pblk_rb_ring_space(%struct.pblk_rb*, i32, i32, i32) #1

declare dso_local i32 @__pblk_rb_update_l2p(%struct.pblk_rb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
