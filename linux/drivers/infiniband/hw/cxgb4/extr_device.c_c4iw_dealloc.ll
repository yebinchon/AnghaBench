; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uld_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_dealloc(%struct.uld_ctx* %0) #0 {
  %2 = alloca %struct.uld_ctx*, align 8
  store %struct.uld_ctx* %0, %struct.uld_ctx** %2, align 8
  %3 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = call i32 @c4iw_rdev_close(%struct.TYPE_4__* %6)
  %8 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 8
  %12 = call i32 @xa_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 7
  %21 = call i32 @xa_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  %30 = call i32 @xa_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = call i32 @xa_empty(i32* %43)
  %45 = call i32 @wait_event(i32 %39, i32 %44)
  %46 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = call i32 @xa_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = call i32 @xa_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %65 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %1
  %72 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %73 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @iounmap(i64 %77)
  br label %79

79:                                               ; preds = %71, %1
  %80 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %81 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %89 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @iounmap(i64 %93)
  br label %95

95:                                               ; preds = %87, %79
  %96 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %97 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @ib_dealloc_device(i32* %99)
  %101 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %102 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %101, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %102, align 8
  ret void
}

declare dso_local i32 @c4iw_rdev_close(%struct.TYPE_4__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xa_empty(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
