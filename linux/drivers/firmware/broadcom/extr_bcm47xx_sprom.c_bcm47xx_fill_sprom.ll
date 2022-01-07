; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"sromrev\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ccode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"leddc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm47xx_fill_sprom(%struct.ssb_sprom* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @bcm47xx_fill_sprom_ethernet(%struct.ssb_sprom* %7, i8* %8, i32 %9)
  %11 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @bcm47xx_fill_board_data(%struct.ssb_sprom* %11, i8* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %17 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @nvram_read_u8(i8* %15, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17, i32 0, i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %22 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nvram_read_alpha2(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %27 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %33 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %32, i32 0, i32 2
  %34 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %35 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %34, i32 0, i32 1
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @nvram_read_leddc(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %33, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %3
  %39 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %40 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %56 [
    i32 4, label %42
    i32 5, label %42
    i32 8, label %51
    i32 9, label %51
  ]

42:                                               ; preds = %38, %38
  %43 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @bcm47xx_fill_sprom_path_r4589(%struct.ssb_sprom* %43, i8* %44, i32 %45)
  %47 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bcm47xx_fill_sprom_path_r45(%struct.ssb_sprom* %47, i8* %48, i32 %49)
  br label %56

51:                                               ; preds = %38, %38
  %52 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @bcm47xx_fill_sprom_path_r4589(%struct.ssb_sprom* %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %38, %51, %42
  %57 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @bcm47xx_sprom_fill_auto(%struct.ssb_sprom* %57, i8* %58, i32 %59)
  ret void
}

declare dso_local i32 @bcm47xx_fill_sprom_ethernet(%struct.ssb_sprom*, i8*, i32) #1

declare dso_local i32 @bcm47xx_fill_board_data(%struct.ssb_sprom*, i8*, i32) #1

declare dso_local i32 @nvram_read_u8(i8*, i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @nvram_read_alpha2(i8*, i8*, i32, i32) #1

declare dso_local i32 @nvram_read_leddc(i8*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @bcm47xx_fill_sprom_path_r4589(%struct.ssb_sprom*, i8*, i32) #1

declare dso_local i32 @bcm47xx_fill_sprom_path_r45(%struct.ssb_sprom*, i8*, i32) #1

declare dso_local i32 @bcm47xx_sprom_fill_auto(%struct.ssb_sprom*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
