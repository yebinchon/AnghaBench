; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_get_next_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_get_next_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hqvdp = type { i32, i64 }

@HQVDP_MBX_NEXT_CMD = common dso_local global i64 0, align 8
@NB_VDP_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_hqvdp*)* @sti_hqvdp_get_next_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hqvdp_get_next_cmd(%struct.sti_hqvdp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_hqvdp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sti_hqvdp* %0, %struct.sti_hqvdp** %3, align 8
  %7 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %3, align 8
  %8 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %3, align 8
  %11 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HQVDP_MBX_NEXT_CMD, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NB_VDP_CMD, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
