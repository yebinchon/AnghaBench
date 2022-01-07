; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_create_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_create_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition_desc = type { i32, %struct.partition_affinity*, i32, i32, %struct.irq_domain*, %struct.irq_domain_ops }
%struct.irq_domain = type { i32 }
%struct.irq_domain_ops = type { i32, i32, i32, i32 }
%struct.fwnode_handle = type { i32 }
%struct.partition_affinity = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@partition_domain_free = common dso_local global i32 0, align 4
@partition_domain_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.partition_desc* @partition_create_desc(%struct.fwnode_handle* %0, %struct.partition_affinity* %1, i32 %2, i32 %3, %struct.irq_domain_ops* %4) #0 {
  %6 = alloca %struct.partition_desc*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.partition_affinity*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_domain_ops*, align 8
  %12 = alloca %struct.partition_desc*, align 8
  %13 = alloca %struct.irq_domain*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %7, align 8
  store %struct.partition_affinity* %1, %struct.partition_affinity** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.irq_domain_ops* %4, %struct.irq_domain_ops** %11, align 8
  %14 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %11, align 8
  %15 = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %11, align 8
  %20 = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.partition_desc* @kzalloc(i32 48, i32 %28)
  store %struct.partition_desc* %29, %struct.partition_desc** %12, align 8
  %30 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %31 = icmp ne %struct.partition_desc* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store %struct.partition_desc* null, %struct.partition_desc** %6, align 8
  br label %96

33:                                               ; preds = %24
  %34 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %35 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %34, i32 0, i32 5
  %36 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %11, align 8
  %37 = bitcast %struct.irq_domain_ops* %35 to i8*
  %38 = bitcast %struct.irq_domain_ops* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 16, i1 false)
  %39 = load i32, i32* @partition_domain_free, align 4
  %40 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %41 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @partition_domain_alloc, align 4
  %44 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %45 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %50 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %49, i32 0, i32 5
  %51 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %52 = call %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* %47, i32 %48, %struct.irq_domain_ops* %50, %struct.partition_desc* %51)
  store %struct.irq_domain* %52, %struct.irq_domain** %13, align 8
  %53 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %54 = icmp ne %struct.irq_domain* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %33
  br label %87

56:                                               ; preds = %33
  %57 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %58 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %59 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %58, i32 0, i32 4
  store %struct.irq_domain* %57, %struct.irq_domain** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @BITS_TO_LONGS(i32 %60)
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @kcalloc(i32 %61, i32 8, i32 %62)
  %64 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %65 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %67 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  br label %87

75:                                               ; preds = %56
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @irq_to_desc(i32 %76)
  %78 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %79 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %82 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.partition_affinity*, %struct.partition_affinity** %8, align 8
  %84 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %85 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %84, i32 0, i32 1
  store %struct.partition_affinity* %83, %struct.partition_affinity** %85, align 8
  %86 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  store %struct.partition_desc* %86, %struct.partition_desc** %6, align 8
  br label %96

87:                                               ; preds = %74, %55
  %88 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %89 = icmp ne %struct.irq_domain* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %92 = call i32 @irq_domain_remove(%struct.irq_domain* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.partition_desc*, %struct.partition_desc** %12, align 8
  %95 = call i32 @kfree(%struct.partition_desc* %94)
  store %struct.partition_desc* null, %struct.partition_desc** %6, align 8
  br label %96

96:                                               ; preds = %93, %75, %32
  %97 = load %struct.partition_desc*, %struct.partition_desc** %6, align 8
  ret %struct.partition_desc* %97
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.partition_desc* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle*, i32, %struct.irq_domain_ops*, %struct.partition_desc*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

declare dso_local i32 @kfree(%struct.partition_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
