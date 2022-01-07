; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_v3_v7_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_v3_v7_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.alps_data* }
%struct.alps_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"pitch %dx%d num-electrodes %dx%d physical size %dx%d mm res %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @alps_get_v3_v7_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_get_v3_v7_resolution(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 0
  %16 = load %struct.alps_data*, %struct.alps_data** %15, align 8
  store %struct.alps_data* %16, %struct.alps_data** %13, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %102

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = sext i8 %27 to i32
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 50, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = trunc i32 %33 to i8
  %35 = sext i8 %34 to i32
  %36 = ashr i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 36, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %40, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %102

48:                                               ; preds = %24
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 4
  %51 = trunc i32 %50 to i8
  %52 = sext i8 %51 to i32
  %53 = ashr i32 %52, 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 17, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = trunc i32 %56 to i8
  %58 = sext i8 %57 to i32
  %59 = ashr i32 %58, 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 13, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = mul nsw i32 %62, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 1
  %69 = mul nsw i32 %66, %68
  store i32 %69, i32* %12, align 4
  %70 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  %71 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 10
  %74 = load i32, i32* %11, align 4
  %75 = sdiv i32 %73, %74
  %76 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  %77 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  %79 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 10
  %82 = load i32, i32* %12, align 4
  %83 = sdiv i32 %81, %82
  %84 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  %85 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sdiv i32 %91, 10
  %93 = load i32, i32* %12, align 4
  %94 = sdiv i32 %93, 10
  %95 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  %96 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  %99 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @psmouse_dbg(%struct.psmouse* %86, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90, i32 %92, i32 %94, i32 %97, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %48, %46, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
