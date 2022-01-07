; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_get_umem_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_get_umem_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_umem = type { i32 }
%struct.ib_udata = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_umem* (%struct.ib_udata*, i64, i64, i32)* @mlx4_get_umem_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_umem* @mlx4_get_umem_mr(%struct.ib_udata* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  store %struct.ib_udata* %0, %struct.ib_udata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @ib_access_writable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @untagged_addr(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_3__* %24, i64 %25)
  store %struct.vm_area_struct* %26, %struct.vm_area_struct** %10, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %14
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VM_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %43
  br label %59

55:                                               ; preds = %37, %29, %14
  %56 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  br label %65

65:                                               ; preds = %59, %4
  %66 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.ib_umem* @ib_umem_get(%struct.ib_udata* %66, i64 %67, i64 %68, i32 %69, i32 0)
  ret %struct.ib_umem* %70
}

declare dso_local i32 @ib_access_writable(i32) #1

declare dso_local i64 @untagged_addr(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_udata*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
