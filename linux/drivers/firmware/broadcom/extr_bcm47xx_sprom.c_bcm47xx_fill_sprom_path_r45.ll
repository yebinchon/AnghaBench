; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom_path_r45.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom_path_r45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { %struct.ssb_sprom_core_pwr_info* }
%struct.ssb_sprom_core_pwr_info = type { i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pa2gw3a\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pa5gw3a\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pa5glw3a\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pa5ghw3a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i8*, i32)* @bcm47xx_fill_sprom_path_r45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xx_fill_sprom_path_r45(%struct.ssb_sprom* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssb_sprom_core_pwr_info*, align 8
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %59, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %13 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.ssb_sprom_core_pwr_info* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %10
  %18 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %19 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %18, i32 0, i32 0
  %20 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %20, i64 %22
  store %struct.ssb_sprom_core_pwr_info* %23, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snprintf(i8* %24, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %29 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %30 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @nvram_read_u16(i8* %27, i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32 0, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %37 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %38 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nvram_read_u16(i8* %35, i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %40, i32 0, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %45 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %46 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @nvram_read_u16(i8* %43, i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %48, i32 0, i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %53 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %54 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @nvram_read_u16(i8* %51, i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %17
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %10

62:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ssb_sprom_core_pwr_info*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @nvram_read_u16(i8*, i8*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
