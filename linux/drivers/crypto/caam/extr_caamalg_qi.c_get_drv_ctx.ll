; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_get_drv_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_get_drv_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_drv_ctx = type { i32 }
%struct.caam_ctx = type { i32, %struct.caam_drv_ctx**, i32, i32*, i32* }

@ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.caam_drv_ctx* (%struct.caam_ctx*, i32)* @get_drv_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.caam_drv_ctx* @get_drv_ctx(%struct.caam_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.caam_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.caam_drv_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.caam_ctx* %0, %struct.caam_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %8, i32 0, i32 1
  %10 = load %struct.caam_drv_ctx**, %struct.caam_drv_ctx*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %10, i64 %12
  %14 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %13, align 8
  store %struct.caam_drv_ctx* %14, %struct.caam_drv_ctx** %5, align 8
  %15 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %5, align 8
  %16 = icmp ne %struct.caam_drv_ctx* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %2
  %22 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %25, i32 0, i32 1
  %27 = load %struct.caam_drv_ctx**, %struct.caam_drv_ctx*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %27, i64 %29
  %31 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %30, align 8
  store %struct.caam_drv_ctx* %31, %struct.caam_drv_ctx** %5, align 8
  %32 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %5, align 8
  %33 = icmp ne %struct.caam_drv_ctx* %32, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ENCRYPT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %6, align 8
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = call i32 (...) @smp_processor_id()
  store i32 %47, i32* %7, align 4
  %48 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call %struct.caam_drv_ctx* @caam_drv_ctx_init(i32 %50, i32* %7, i32* %51)
  store %struct.caam_drv_ctx* %52, %struct.caam_drv_ctx** %5, align 8
  %53 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %5, align 8
  %54 = call i32 @IS_ERR_OR_NULL(%struct.caam_drv_ctx* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %46
  %61 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %5, align 8
  %62 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %62, i32 0, i32 1
  %64 = load %struct.caam_drv_ctx**, %struct.caam_drv_ctx*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %64, i64 %66
  store %struct.caam_drv_ctx* %61, %struct.caam_drv_ctx** %67, align 8
  br label %68

68:                                               ; preds = %60, %21
  %69 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %2
  %73 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %5, align 8
  ret %struct.caam_drv_ctx* %73
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.caam_drv_ctx* @caam_drv_ctx_init(i32, i32*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.caam_drv_ctx*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
