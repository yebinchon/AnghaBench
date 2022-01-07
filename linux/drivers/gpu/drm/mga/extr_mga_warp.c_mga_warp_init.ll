; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_warp.c_mga_warp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_warp.c_mga_warp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MGA_WIADDR2 = common dso_local global i32 0, align 4
@MGA_WMODE_SUSPEND = common dso_local global i32 0, align 4
@MGA_WGETMSB = common dso_local global i32 0, align 4
@MGA_WVRTXSZ = common dso_local global i32 0, align 4
@MGA_WACCEPTSEQ = common dso_local global i32 0, align 4
@MGA_WIADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MGA_WMISC = common dso_local global i32 0, align 4
@MGA_WUCODECACHE_ENABLE = common dso_local global i32 0, align 4
@MGA_WMASTER_ENABLE = common dso_local global i32 0, align 4
@MGA_WCACHEFLUSH_ENABLE = common dso_local global i32 0, align 4
@WMISC_EXPECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"WARP engine config failed! 0x%x != 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_warp_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %26 [
    i32 129, label %8
    i32 128, label %8
    i32 130, label %18
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @MGA_WIADDR2, align 4
  %10 = load i32, i32* @MGA_WMODE_SUSPEND, align 4
  %11 = call i32 @MGA_WRITE(i32 %9, i32 %10)
  %12 = load i32, i32* @MGA_WGETMSB, align 4
  %13 = call i32 @MGA_WRITE(i32 %12, i32 3584)
  %14 = load i32, i32* @MGA_WVRTXSZ, align 4
  %15 = call i32 @MGA_WRITE(i32 %14, i32 6151)
  %16 = load i32, i32* @MGA_WACCEPTSEQ, align 4
  %17 = call i32 @MGA_WRITE(i32 %16, i32 402653184)
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @MGA_WIADDR, align 4
  %20 = load i32, i32* @MGA_WMODE_SUSPEND, align 4
  %21 = call i32 @MGA_WRITE(i32 %19, i32 %20)
  %22 = load i32, i32* @MGA_WGETMSB, align 4
  %23 = call i32 @MGA_WRITE(i32 %22, i32 5638)
  %24 = load i32, i32* @MGA_WVRTXSZ, align 4
  %25 = call i32 @MGA_WRITE(i32 %24, i32 7)
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %18, %8
  %30 = load i32, i32* @MGA_WMISC, align 4
  %31 = load i32, i32* @MGA_WUCODECACHE_ENABLE, align 4
  %32 = load i32, i32* @MGA_WMASTER_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MGA_WCACHEFLUSH_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @MGA_WRITE(i32 %30, i32 %35)
  %37 = load i32, i32* @MGA_WMISC, align 4
  %38 = call i64 @MGA_READ(i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @WMISC_EXPECTED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @WMISC_EXPECTED, align 8
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %26
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @MGA_WRITE(i32, i32) #1

declare dso_local i64 @MGA_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
