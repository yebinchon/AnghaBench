; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom_ethernet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_bcm47xx_fill_sprom_ethernet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"et0macaddr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"et0mdcport\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"et0phyaddr\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"et1macaddr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"et1mdcport\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"et1phyaddr\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"et2macaddr\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"et2mdcport\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"et2phyaddr\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"macaddr\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"il0macaddr\00", align 1
@mac_addr_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i8*, i32)* @bcm47xx_fill_sprom_ethernet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xx_fill_sprom_ethernet(%struct.ssb_sprom* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %13 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %12, i32 0, i32 9
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @nvram_read_macaddr(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %19 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %18, i32 0, i32 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @nvram_read_u8(i8* %17, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32 0, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %24 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %23, i32 0, i32 7
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nvram_read_u8(i8* %22, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %24, i32 0, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %29 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nvram_read_macaddr(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %35 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %34, i32 0, i32 5
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @nvram_read_u8(i8* %33, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %35, i32 0, i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %40 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %39, i32 0, i32 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nvram_read_u8(i8* %38, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %40, i32 0, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %45 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @nvram_read_macaddr(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %46, i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %51 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %50, i32 0, i32 2
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @nvram_read_u8(i8* %49, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %51, i32 0, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %56 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %55, i32 0, i32 1
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @nvram_read_u8(i8* %54, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %56, i32 0, i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %61 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @nvram_read_macaddr(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %62, i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %67 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @nvram_read_macaddr(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %68, i32 %69)
  %71 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %72 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @bcm47xx_is_valid_mac(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %3
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %78 = call i32 @nvram_read_macaddr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %77, i32 0)
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %80 = call i64 @bcm47xx_is_valid_mac(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %84 = load i32, i32* @mac_addr_used, align 4
  %85 = call i32 @bcm47xx_increase_mac_addr(i32* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %93 = call i32 @ether_addr_copy(i32* %91, i32* %92)
  %94 = load i32, i32* @mac_addr_used, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @mac_addr_used, align 4
  br label %96

96:                                               ; preds = %88, %82
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97, %3
  ret void
}

declare dso_local i32 @nvram_read_macaddr(i8*, i8*, i32*, i32) #1

declare dso_local i32 @nvram_read_u8(i8*, i32*, i8*, i32*, i32, i32) #1

declare dso_local i64 @bcm47xx_is_valid_mac(i32*) #1

declare dso_local i32 @bcm47xx_increase_mac_addr(i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
