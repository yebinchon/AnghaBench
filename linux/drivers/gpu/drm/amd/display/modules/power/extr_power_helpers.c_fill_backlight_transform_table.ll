; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_fill_backlight_transform_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_fill_backlight_transform_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iram_table_v_2 = type { i32*, i8** }
%struct.dmcu_iram_parameters = type { i32, i8** }

@NUM_BL_CURVE_SEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, %struct.iram_table_v_2*)* @fill_backlight_transform_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_backlight_transform_table(i32 %0, i8** %1, %struct.iram_table_v_2* %2) #0 {
  %4 = alloca %struct.dmcu_iram_parameters, align 8
  %5 = alloca %struct.iram_table_v_2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.dmcu_iram_parameters* %4 to { i32, i8** }*
  %10 = getelementptr inbounds { i32, i8** }, { i32, i8** }* %9, i32 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i8** }, { i32, i8** }* %9, i32 0, i32 1
  store i8** %1, i8*** %11, align 8
  store %struct.iram_table_v_2* %2, %struct.iram_table_v_2** %5, align 8
  %12 = load i32, i32* @NUM_BL_CURVE_SEGS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.iram_table_v_2*, %struct.iram_table_v_2** %5, align 8
  %14 = getelementptr inbounds %struct.iram_table_v_2, %struct.iram_table_v_2* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.iram_table_v_2*, %struct.iram_table_v_2** %5, align 8
  %22 = getelementptr inbounds %struct.iram_table_v_2, %struct.iram_table_v_2* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load %struct.iram_table_v_2*, %struct.iram_table_v_2** %5, align 8
  %26 = getelementptr inbounds %struct.iram_table_v_2, %struct.iram_table_v_2* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 65535, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %33, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.iram_table_v_2*, %struct.iram_table_v_2** %5, align 8
  %41 = getelementptr inbounds %struct.iram_table_v_2, %struct.iram_table_v_2* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %39, i8** %46, align 8
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %92, %3
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %58, 1
  %60 = udiv i32 %57, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = mul i32 %67, 65536
  %69 = load i32, i32* %7, align 4
  %70 = call i8* @DIV_ROUNDUP(i32 %68, i32 %69)
  %71 = call i8* @cpu_to_be16(i8* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.iram_table_v_2*, %struct.iram_table_v_2** %5, align 8
  %74 = getelementptr inbounds %struct.iram_table_v_2, %struct.iram_table_v_2* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %4, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @cpu_to_be16(i8* %84)
  %86 = load %struct.iram_table_v_2*, %struct.iram_table_v_2** %5, align 8
  %87 = getelementptr inbounds %struct.iram_table_v_2, %struct.iram_table_v_2* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %52
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %47

95:                                               ; preds = %47
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @cpu_to_be16(i8*) #1

declare dso_local i8* @DIV_ROUNDUP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
