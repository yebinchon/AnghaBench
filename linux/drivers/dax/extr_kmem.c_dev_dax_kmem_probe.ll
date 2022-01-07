; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_kmem.c_dev_dax_kmem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_kmem.c_dev_dax_kmem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dev_dax = type { i32, %struct.resource*, %struct.TYPE_2__* }
%struct.resource = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.resource }

@.str = private unnamed_addr constant [48 x i8] c"rejecting DAX region %pR with invalid node: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not reserve region [%pa-%pa]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_SYSTEM_RAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_dax_kmem_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_dax*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.dev_dax* @to_dev_dax(%struct.device* %12)
  store %struct.dev_dax* %13, %struct.dev_dax** %4, align 8
  %14 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %15 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.resource* %17, %struct.resource** %5, align 8
  %18 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %19 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.resource* %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %1
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (...) @memory_block_size_bytes()
  %35 = call i32 @ALIGN(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = call i32 @resource_size(%struct.resource* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = call i32 (...) @memory_block_size_bytes()
  %46 = sub nsw i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @dev_name(%struct.device* %55)
  %57 = call %struct.resource* @request_mem_region(i32 %53, i32 %54, i32 %56)
  store %struct.resource* %57, %struct.resource** %9, align 8
  %58 = load %struct.resource*, %struct.resource** %9, align 8
  %59 = icmp ne %struct.resource* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %30
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %8)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %92

65:                                               ; preds = %30
  %66 = load i32, i32* @IORESOURCE_SYSTEM_RAM, align 4
  %67 = load %struct.resource*, %struct.resource** %9, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = call i32 @dev_name(%struct.device* %69)
  %71 = load %struct.resource*, %struct.resource** %9, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.resource*, %struct.resource** %9, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.resource*, %struct.resource** %9, align 8
  %78 = call i32 @resource_size(%struct.resource* %77)
  %79 = call i32 @add_memory(i32 %73, i32 %76, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.resource*, %struct.resource** %9, align 8
  %84 = call i32 @release_resource(%struct.resource* %83)
  %85 = load %struct.resource*, %struct.resource** %9, align 8
  %86 = call i32 @kfree(%struct.resource* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %2, align 4
  br label %92

88:                                               ; preds = %65
  %89 = load %struct.resource*, %struct.resource** %9, align 8
  %90 = load %struct.dev_dax*, %struct.dev_dax** %4, align 8
  %91 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %90, i32 0, i32 1
  store %struct.resource* %89, %struct.resource** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %82, %60, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.dev_dax* @to_dev_dax(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memory_block_size_bytes(...) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @add_memory(i32, i32, i32) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
