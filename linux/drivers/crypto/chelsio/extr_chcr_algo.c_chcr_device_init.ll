; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chcr_context = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.uld_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"chcr device assignment fails\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chcr_context*)* @chcr_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_device_init(%struct.chcr_context* %0) #0 {
  %2 = alloca %struct.chcr_context*, align 8
  %3 = alloca %struct.uld_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.chcr_context* %0, %struct.chcr_context** %2, align 8
  store %struct.uld_ctx* null, %struct.uld_ctx** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %4, align 4
  %12 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %13 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %108, label %16

16:                                               ; preds = %1
  %17 = call %struct.uld_ctx* (...) @assign_chcr_device()
  store %struct.uld_ctx* %17, %struct.uld_ctx** %3, align 8
  %18 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %19 = icmp ne %struct.uld_ctx* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %109

24:                                               ; preds = %16
  %25 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %25, i32 0, i32 1
  %27 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %28 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %27, i32 0, i32 4
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %42, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %49 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %54 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %59 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %61 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %60, i32 0, i32 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %69 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %73 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %78 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %9, align 4
  %84 = urem i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %88 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = urem i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %99 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %102 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sdiv i32 %103, %104
  %106 = load %struct.chcr_context*, %struct.chcr_context** %2, align 8
  %107 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %24, %1
  br label %109

109:                                              ; preds = %108, %20
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.uld_ctx* @assign_chcr_device(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
