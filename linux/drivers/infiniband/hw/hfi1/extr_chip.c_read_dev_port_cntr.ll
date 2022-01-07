; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_dev_port_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_dev_port_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.cntr_entry = type { i32, i32 (%struct.cntr_entry*, i8*, i32, i32, i32)*, i32 }

@CNTR_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Counter %s not enabled\00", align 1
@CNTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cntr: %s vl %d psval 0x%llx\00", align 1
@CNTR_MODE_R = common dso_local global i32 0, align 4
@CNTR_SYNTH = common dso_local global i32 0, align 4
@CNTR_MAX = common dso_local global i32 0, align 4
@CNTR_32BIT = common dso_local global i32 0, align 4
@CNTR_32BIT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09New val=0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.cntr_entry*, i32*, i8*, i32)* @read_dev_port_cntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dev_port_cntr(%struct.hfi1_devdata* %0, %struct.cntr_entry* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca %struct.cntr_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %7, align 8
  store %struct.cntr_entry* %1, %struct.cntr_entry** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %19 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CNTR_DISABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %26 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %27 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dd_dev_err(%struct.hfi1_devdata* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %6, align 4
  br label %114

30:                                               ; preds = %5
  %31 = load i32, i32* @CNTR, align 4
  %32 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %33 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 %37)
  %39 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %40 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %39, i32 0, i32 1
  %41 = load i32 (%struct.cntr_entry*, i8*, i32, i32, i32)*, i32 (%struct.cntr_entry*, i8*, i32, i32, i32)** %40, align 8
  %42 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CNTR_MODE_R, align 4
  %46 = call i32 %41(%struct.cntr_entry* %42, i8* %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %48 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CNTR_SYNTH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %30
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @CNTR_MAX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @CNTR_MAX, align 4
  store i32 %58, i32* %6, align 4
  br label %114

59:                                               ; preds = %53
  %60 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %61 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CNTR_32BIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  %68 = ashr i32 %67, 32
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 %69, 32
  %71 = ashr i32 %70, 32
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @CNTR_32BIT_MAX, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @CNTR_MAX, align 4
  store i32 %80, i32* %12, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81, %79
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @CNTR_MAX, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = shl i32 %90, 32
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %89, %85
  br label %106

95:                                               ; preds = %59
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @CNTR_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %95
  %104 = load i32, i32* @CNTR_MAX, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %30
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @CNTR, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %107, %57, %24
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
