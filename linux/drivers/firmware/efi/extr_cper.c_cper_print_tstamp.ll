; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_print_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_print_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic_data_v300 = type { i32, i32 }

@ACPI_HEST_GEN_VALID_TIMESTAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s%ststamp: %02d%02d-%02d-%02d %02d:%02d:%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"precise \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"imprecise \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.acpi_hest_generic_data_v300*)* @cper_print_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cper_print_tstamp(i8* %0, %struct.acpi_hest_generic_data_v300* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_hest_generic_data_v300*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.acpi_hest_generic_data_v300* %1, %struct.acpi_hest_generic_data_v300** %4, align 8
  %13 = load %struct.acpi_hest_generic_data_v300*, %struct.acpi_hest_generic_data_v300** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_hest_generic_data_v300, %struct.acpi_hest_generic_data_v300* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ACPI_HEST_GEN_VALID_TIMESTAMP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %2
  %20 = load %struct.acpi_hest_generic_data_v300*, %struct.acpi_hest_generic_data_v300** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_hest_generic_data_v300, %struct.acpi_hest_generic_data_v300* %20, i32 0, i32 1
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bcd2bin(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bcd2bin(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bcd2bin(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bcd2bin(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bcd2bin(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bcd2bin(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bcd2bin(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @printk(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
