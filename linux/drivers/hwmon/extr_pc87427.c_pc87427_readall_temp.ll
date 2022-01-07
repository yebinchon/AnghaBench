; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_readall_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_readall_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc87427_data = type { i32*, i8**, i8**, i8**, i8**, i8**, i32* }

@LD_TEMP = common dso_local global i64 0, align 8
@PC87427_REG_BANK = common dso_local global i64 0, align 8
@PC87427_REG_TEMP = common dso_local global i64 0, align 8
@PC87427_REG_TEMP_MAX = common dso_local global i64 0, align 8
@PC87427_REG_TEMP_MIN = common dso_local global i64 0, align 8
@PC87427_REG_TEMP_CRIT = common dso_local global i64 0, align 8
@PC87427_REG_TEMP_TYPE = common dso_local global i64 0, align 8
@PC87427_REG_TEMP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pc87427_data*, i64)* @pc87427_readall_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc87427_readall_temp(%struct.pc87427_data* %0, i64 %1) #0 {
  %3 = alloca %struct.pc87427_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pc87427_data* %0, %struct.pc87427_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %7 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @LD_TEMP, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i8* @BANK_TM(i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @PC87427_REG_BANK, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i8* %13, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @PC87427_REG_TEMP, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %26 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @PC87427_REG_TEMP_MAX, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i8* @inb(i64 %33)
  %35 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %36 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %35, i32 0, i32 5
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @PC87427_REG_TEMP_MIN, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i8* @inb(i64 %43)
  %45 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %46 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %45, i32 0, i32 4
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @PC87427_REG_TEMP_CRIT, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @inb(i64 %53)
  %55 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %56 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %55, i32 0, i32 3
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @PC87427_REG_TEMP_TYPE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i8* @inb(i64 %63)
  %65 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %66 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @PC87427_REG_TEMP_STATUS, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i8* @inb(i64 %73)
  %75 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %76 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %74, i8** %79, align 8
  %80 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %81 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @PC87427_REG_TEMP_STATUS, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outb(i8* %85, i64 %89)
  ret void
}

declare dso_local i32 @outb(i8*, i64) #1

declare dso_local i8* @BANK_TM(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i8* @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
