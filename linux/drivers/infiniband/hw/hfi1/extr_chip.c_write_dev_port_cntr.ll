; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_dev_port_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_dev_port_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.cntr_entry = type { i32, i32 (%struct.cntr_entry*, i8*, i32, i32, i32)*, i32 }

@CNTR_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Counter %s not enabled\00", align 1
@CNTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cntr: %s vl %d psval 0x%llx\00", align 1
@CNTR_SYNTH = common dso_local global i32 0, align 4
@CNTR_32BIT = common dso_local global i32 0, align 4
@CNTR_MODE_W = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09New val=0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.cntr_entry*, i32*, i8*, i32, i32)* @write_dev_port_cntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dev_port_cntr(%struct.hfi1_devdata* %0, %struct.cntr_entry* %1, i32* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca %struct.cntr_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %8, align 8
  store %struct.cntr_entry* %1, %struct.cntr_entry** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %16 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CNTR_DISABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %23 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %24 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dd_dev_err(%struct.hfi1_devdata* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %7, align 4
  br label %92

27:                                               ; preds = %6
  %28 = load i32, i32* @CNTR, align 4
  %29 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %30 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 %34)
  %36 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %37 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CNTR_SYNTH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %27
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %46 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CNTR_32BIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %53 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %52, i32 0, i32 1
  %54 = load i32 (%struct.cntr_entry*, i8*, i32, i32, i32)*, i32 (%struct.cntr_entry*, i8*, i32, i32, i32)** %53, align 8
  %55 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @CNTR_MODE_W, align 4
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 %59, 32
  %61 = ashr i32 %60, 32
  %62 = call i32 %54(%struct.cntr_entry* %55, i8* %56, i32 %57, i32 %58, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %14, align 4
  br label %74

64:                                               ; preds = %42
  %65 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %66 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %65, i32 0, i32 1
  %67 = load i32 (%struct.cntr_entry*, i8*, i32, i32, i32)*, i32 (%struct.cntr_entry*, i8*, i32, i32, i32)** %66, align 8
  %68 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @CNTR_MODE_W, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 %67(%struct.cntr_entry* %68, i8* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %64, %51
  br label %85

75:                                               ; preds = %27
  %76 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %77 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %76, i32 0, i32 1
  %78 = load i32 (%struct.cntr_entry*, i8*, i32, i32, i32)*, i32 (%struct.cntr_entry*, i8*, i32, i32, i32)** %77, align 8
  %79 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @CNTR_MODE_W, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 %78(%struct.cntr_entry* %79, i8* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %75, %74
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @CNTR, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %21
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
