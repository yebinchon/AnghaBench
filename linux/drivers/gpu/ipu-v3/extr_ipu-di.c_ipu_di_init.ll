; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_di** }
%struct.ipu_di = type { i32, i32, %struct.ipu_soc*, i32, %struct.clk*, i32, i32 }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"di1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"di0\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DI_BS_CLKGEN0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"DI%d base: 0x%08lx remapped to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_di_init(%struct.ipu_soc* %0, %struct.device* %1, i32 %2, i64 %3, i32 %4, %struct.clk* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu_soc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.clk*, align 8
  %14 = alloca %struct.ipu_di*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.clk* %5, %struct.clk** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %94

20:                                               ; preds = %6
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ipu_di* @devm_kzalloc(%struct.device* %21, i32 40, i32 %22)
  store %struct.ipu_di* %23, %struct.ipu_di** %14, align 8
  %24 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %25 = icmp ne %struct.ipu_di* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %94

29:                                               ; preds = %20
  %30 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %31 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %32 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %31, i32 0, i32 0
  %33 = load %struct.ipu_di**, %struct.ipu_di*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ipu_di*, %struct.ipu_di** %33, i64 %35
  store %struct.ipu_di* %30, %struct.ipu_di** %36, align 8
  %37 = load %struct.device*, %struct.device** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %42 = call i32 @devm_clk_get(%struct.device* %37, i8* %41)
  %43 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %44 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %46 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %29
  %51 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %52 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %94

55:                                               ; preds = %29
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %58 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %61 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.clk*, %struct.clk** %13, align 8
  %63 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %64 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %63, i32 0, i32 4
  store %struct.clk* %62, %struct.clk** %64, align 8
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = call i32 @devm_ioremap(%struct.device* %65, i64 %66, i32 %67)
  %69 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %70 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %72 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %55
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %94

78:                                               ; preds = %55
  %79 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %80 = load i32, i32* @DI_BS_CLKGEN0, align 4
  %81 = call i32 @ipu_di_write(%struct.ipu_di* %79, i32 16, i32 %80)
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %86 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %83, i64 %84, i32 %87)
  %89 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %90 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %92 = load %struct.ipu_di*, %struct.ipu_di** %14, align 8
  %93 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %92, i32 0, i32 2
  store %struct.ipu_soc* %91, %struct.ipu_soc** %93, align 8
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %78, %75, %50, %26, %17
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.ipu_di* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @ipu_di_write(%struct.ipu_di*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
