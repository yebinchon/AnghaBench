; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_sections_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_sections_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpd_cbmem = type { i64, i64, i64 }

@MEMREMAP_WB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VPD_CBMEM_MAGIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@ro_vpd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@rw_vpd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @vpd_sections_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_sections_init(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.vpd_cbmem*, align 8
  %5 = alloca %struct.vpd_cbmem, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @MEMREMAP_WB, align 4
  %9 = call %struct.vpd_cbmem* @memremap(i64 %7, i32 24, i32 %8)
  store %struct.vpd_cbmem* %9, %struct.vpd_cbmem** %4, align 8
  %10 = load %struct.vpd_cbmem*, %struct.vpd_cbmem** %4, align 8
  %11 = icmp ne %struct.vpd_cbmem* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.vpd_cbmem*, %struct.vpd_cbmem** %4, align 8
  %17 = call i32 @memcpy(%struct.vpd_cbmem* %5, %struct.vpd_cbmem* %16, i32 24)
  %18 = load %struct.vpd_cbmem*, %struct.vpd_cbmem** %4, align 8
  %19 = call i32 @memunmap(%struct.vpd_cbmem* %18)
  %20 = getelementptr inbounds %struct.vpd_cbmem, %struct.vpd_cbmem* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VPD_CBMEM_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.vpd_cbmem, %struct.vpd_cbmem* %5, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 24
  %34 = getelementptr inbounds %struct.vpd_cbmem, %struct.vpd_cbmem* %5, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @vpd_section_init(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* @ro_vpd, i64 %33, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %27
  %43 = getelementptr inbounds %struct.vpd_cbmem, %struct.vpd_cbmem* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 24
  %49 = getelementptr inbounds %struct.vpd_cbmem, %struct.vpd_cbmem* %5, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %48, %50
  %52 = getelementptr inbounds %struct.vpd_cbmem, %struct.vpd_cbmem* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @vpd_section_init(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* @rw_vpd, i64 %51, i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = call i32 @vpd_section_destroy(i32* @ro_vpd)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %42
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %57, %39, %24, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.vpd_cbmem* @memremap(i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.vpd_cbmem*, %struct.vpd_cbmem*, i32) #1

declare dso_local i32 @memunmap(%struct.vpd_cbmem*) #1

declare dso_local i32 @vpd_section_init(i8*, i32*, i64, i64) #1

declare dso_local i32 @vpd_section_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
