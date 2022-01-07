; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_open_shared_qp_security.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_open_shared_qp_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_3__*, %struct.ib_qp* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ib_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_open_shared_qp_security(%struct.ib_qp* %0, %struct.ib_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  %8 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %8, i32 0, i32 1
  %10 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  store %struct.ib_qp* %10, %struct.ib_qp** %6, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call i32 @ib_create_qp_security(%struct.ib_qp* %11, %struct.ib_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %72

24:                                               ; preds = %18
  %25 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @check_qp_port_pkey_settings(i32 %34, %struct.TYPE_3__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %57

42:                                               ; preds = %24
  %43 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %44 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %45 = icmp ne %struct.ib_qp* %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %48 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %52 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @list_add(i32* %50, i32* %54)
  br label %56

56:                                               ; preds = %46, %42
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %59 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %67 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @destroy_qp_security(%struct.TYPE_3__* %68)
  br label %70

70:                                               ; preds = %65, %57
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %23, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ib_create_qp_security(%struct.ib_qp*, %struct.ib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @check_qp_port_pkey_settings(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @destroy_qp_security(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
