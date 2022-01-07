; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable.c_alloc_io_pgtable_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable.c_alloc_io_pgtable_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_init_fns = type { %struct.io_pgtable* (%struct.io_pgtable_cfg.0*, i8*)* }
%struct.io_pgtable = type { i32, %struct.io_pgtable_ops, %struct.io_pgtable_cfg, i8* }
%struct.io_pgtable_ops = type { i32 }
%struct.io_pgtable_cfg = type { i32 }
%struct.io_pgtable_cfg.0 = type opaque

@IO_PGTABLE_NUM_FMTS = common dso_local global i32 0, align 4
@io_pgtable_init_table = common dso_local global %struct.io_pgtable_init_fns** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_pgtable_ops* @alloc_io_pgtable_ops(i32 %0, %struct.io_pgtable_cfg* %1, i8* %2) #0 {
  %4 = alloca %struct.io_pgtable_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_pgtable_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.io_pgtable*, align 8
  %9 = alloca %struct.io_pgtable_init_fns*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.io_pgtable_cfg* %1, %struct.io_pgtable_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IO_PGTABLE_NUM_FMTS, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.io_pgtable_ops* null, %struct.io_pgtable_ops** %4, align 8
  br label %48

14:                                               ; preds = %3
  %15 = load %struct.io_pgtable_init_fns**, %struct.io_pgtable_init_fns*** @io_pgtable_init_table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.io_pgtable_init_fns*, %struct.io_pgtable_init_fns** %15, i64 %17
  %19 = load %struct.io_pgtable_init_fns*, %struct.io_pgtable_init_fns** %18, align 8
  store %struct.io_pgtable_init_fns* %19, %struct.io_pgtable_init_fns** %9, align 8
  %20 = load %struct.io_pgtable_init_fns*, %struct.io_pgtable_init_fns** %9, align 8
  %21 = icmp ne %struct.io_pgtable_init_fns* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store %struct.io_pgtable_ops* null, %struct.io_pgtable_ops** %4, align 8
  br label %48

23:                                               ; preds = %14
  %24 = load %struct.io_pgtable_init_fns*, %struct.io_pgtable_init_fns** %9, align 8
  %25 = getelementptr inbounds %struct.io_pgtable_init_fns, %struct.io_pgtable_init_fns* %24, i32 0, i32 0
  %26 = load %struct.io_pgtable* (%struct.io_pgtable_cfg.0*, i8*)*, %struct.io_pgtable* (%struct.io_pgtable_cfg.0*, i8*)** %25, align 8
  %27 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %6, align 8
  %28 = bitcast %struct.io_pgtable_cfg* %27 to %struct.io_pgtable_cfg.0*
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.io_pgtable* %26(%struct.io_pgtable_cfg.0* %28, i8* %29)
  store %struct.io_pgtable* %30, %struct.io_pgtable** %8, align 8
  %31 = load %struct.io_pgtable*, %struct.io_pgtable** %8, align 8
  %32 = icmp ne %struct.io_pgtable* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store %struct.io_pgtable_ops* null, %struct.io_pgtable_ops** %4, align 8
  br label %48

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.io_pgtable*, %struct.io_pgtable** %8, align 8
  %37 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.io_pgtable*, %struct.io_pgtable** %8, align 8
  %40 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.io_pgtable*, %struct.io_pgtable** %8, align 8
  %42 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %41, i32 0, i32 2
  %43 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %6, align 8
  %44 = bitcast %struct.io_pgtable_cfg* %42 to i8*
  %45 = bitcast %struct.io_pgtable_cfg* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.io_pgtable*, %struct.io_pgtable** %8, align 8
  %47 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %46, i32 0, i32 1
  store %struct.io_pgtable_ops* %47, %struct.io_pgtable_ops** %4, align 8
  br label %48

48:                                               ; preds = %34, %33, %22, %13
  %49 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %4, align 8
  ret %struct.io_pgtable_ops* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
