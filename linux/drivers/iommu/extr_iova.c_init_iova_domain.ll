; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_init_iova_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_init_iova_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.iova_domain = type { i64, i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@RB_ROOT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IOVA_ANCHOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_iova_domain(%struct.iova_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iova_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.iova_domain* %0, %struct.iova_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @PAGE_SIZE, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @is_power_of_2(i64 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i1 [ true, %3 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %20 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %19, i32 0, i32 10
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %23 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %22, i32 0, i32 4
  %24 = bitcast %struct.TYPE_5__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 bitcast (%struct.TYPE_5__* @RB_ROOT to i8*), i64 4, i1 false)
  %25 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %26 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %29 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %28, i32 0, i32 9
  store i32* %27, i32** %29, align 8
  %30 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %31 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %34 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %33, i32 0, i32 8
  store i32* %32, i32** %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %37 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %40 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %42 = call i32 @iova_shift(%struct.iova_domain* %41)
  %43 = sub nsw i32 32, %42
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %47 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %49 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %52 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %54 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %53, i32 0, i32 7
  store i32* null, i32** %54, align 8
  %55 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %56 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %55, i32 0, i32 6
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @IOVA_ANCHOR, align 4
  %58 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %59 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %62 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %57, i32* %63, align 4
  %64 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %65 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %68 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @rb_link_node(i32* %66, i32* null, i32* %69)
  %71 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %72 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %75 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %74, i32 0, i32 4
  %76 = call i32 @rb_insert_color(i32* %73, %struct.TYPE_5__* %75)
  %77 = load %struct.iova_domain*, %struct.iova_domain** %4, align 8
  %78 = call i32 @init_iova_rcaches(%struct.iova_domain* %77)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iova_shift(%struct.iova_domain*) #1

declare dso_local i32 @rb_link_node(i32*, i32*, i32*) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @init_iova_rcaches(%struct.iova_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
