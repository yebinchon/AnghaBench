; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom_path_r4589.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom_path_r4589.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { %struct.ssb_sprom_core_pwr_info* }
%struct.ssb_sprom_core_pwr_info = type { i32*, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"maxp2ga\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"itt2ga\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"itt5ga\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pa2gw0a\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pa2gw1a\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pa2gw2a\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"maxp5ga\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"maxp5gha\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"maxp5gla\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pa5gw0a\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pa5gw1a\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pa5gw2a\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pa5glw0a\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pa5glw1a\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pa5glw2a\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pa5ghw0a\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"pa5ghw1a\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"pa5ghw2a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i8*, i32)* @bcm47xx_fill_sprom_path_r4589 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xx_fill_sprom_path_r4589(%struct.ssb_sprom* %0, i8* %1, i32 %2) #0 {
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

10:                                               ; preds = %159, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %13 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.ssb_sprom_core_pwr_info* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %162

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
  %30 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %29, i32 0, i32 9
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nvram_read_u8(i8* %27, i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32 0, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %35 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %36 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %35, i32 0, i32 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nvram_read_u8(i8* %33, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %36, i32 0, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %41 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %42 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %41, i32 0, i32 7
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @nvram_read_u8(i8* %39, i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %42, i32 0, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %47 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %48 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @nvram_read_u16(i8* %45, i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %50, i32 0, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %55 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %56 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @nvram_read_u16(i8* %53, i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %58, i32 0, i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %63 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %64 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @nvram_read_u16(i8* %61, i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %66, i32 0, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %71 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %72 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %71, i32 0, i32 5
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @nvram_read_u8(i8* %69, i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %72, i32 0, i32 %73)
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %77 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %78 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %77, i32 0, i32 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @nvram_read_u8(i8* %75, i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %78, i32 0, i32 %79)
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %83 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %84 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %83, i32 0, i32 3
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @nvram_read_u8(i8* %81, i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %84, i32 0, i32 %85)
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %89 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @nvram_read_u16(i8* %87, i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %92, i32 0, i32 %93)
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %97 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %98 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @nvram_read_u16(i8* %95, i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* %100, i32 0, i32 %101)
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %105 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %106 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @nvram_read_u16(i8* %103, i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %108, i32 0, i32 %109)
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %113 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %114 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @nvram_read_u16(i8* %111, i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32* %116, i32 0, i32 %117)
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %121 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %122 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @nvram_read_u16(i8* %119, i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* %124, i32 0, i32 %125)
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %129 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %130 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @nvram_read_u16(i8* %127, i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* %132, i32 0, i32 %133)
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %137 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %138 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @nvram_read_u16(i8* %135, i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32* %140, i32 0, i32 %141)
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %145 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %146 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @nvram_read_u16(i8* %143, i8* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32* %148, i32 0, i32 %149)
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %153 = load %struct.ssb_sprom_core_pwr_info*, %struct.ssb_sprom_core_pwr_info** %9, align 8
  %154 = getelementptr inbounds %struct.ssb_sprom_core_pwr_info, %struct.ssb_sprom_core_pwr_info* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @nvram_read_u16(i8* %151, i8* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32* %156, i32 0, i32 %157)
  br label %159

159:                                              ; preds = %17
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %10

162:                                              ; preds = %10
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ssb_sprom_core_pwr_info*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @nvram_read_u8(i8*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @nvram_read_u16(i8*, i8*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
