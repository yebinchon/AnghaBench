; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp4_core.c_cyttsp4_si_get_op_data_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp4_core.c_cyttsp4_si_get_op_data_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp4 = type { %struct.cyttsp4_sysinfo }
%struct.cyttsp4_sysinfo = type { i8*, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp4*)* @cyttsp4_si_get_op_data_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp4_si_get_op_data_ptrs(%struct.cyttsp4* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyttsp4*, align 8
  %4 = alloca %struct.cyttsp4_sysinfo*, align 8
  %5 = alloca i8*, align 8
  store %struct.cyttsp4* %0, %struct.cyttsp4** %3, align 8
  %6 = load %struct.cyttsp4*, %struct.cyttsp4** %3, align 8
  %7 = getelementptr inbounds %struct.cyttsp4, %struct.cyttsp4* %6, i32 0, i32 0
  store %struct.cyttsp4_sysinfo* %7, %struct.cyttsp4_sysinfo** %4, align 8
  %8 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %9 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %12 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* @__GFP_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @krealloc(i8* %10, i32 %14, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %73

24:                                               ; preds = %1
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %27 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %29 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %32 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @__GFP_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @krealloc(i8* %30, i32 %34, i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %73

44:                                               ; preds = %24
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %47 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %49 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %52 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %56 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %54, %58
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @__GFP_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @krealloc(i8* %50, i32 %59, i32 %62)
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %44
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %44
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.cyttsp4_sysinfo*, %struct.cyttsp4_sysinfo** %4, align 8
  %72 = getelementptr inbounds %struct.cyttsp4_sysinfo, %struct.cyttsp4_sysinfo* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %66, %41, %21
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @krealloc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
