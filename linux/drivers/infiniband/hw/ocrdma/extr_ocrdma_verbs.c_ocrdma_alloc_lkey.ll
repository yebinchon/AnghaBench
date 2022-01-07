; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_mr*, i32, i32, i32, i32)* @ocrdma_alloc_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_alloc_lkey(%struct.ocrdma_dev* %0, %struct.ocrdma_mr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_dev*, align 8
  %9 = alloca %struct.ocrdma_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %8, align 8
  store %struct.ocrdma_mr* %1, %struct.ocrdma_mr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %16 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %19 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %28 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %37 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %46 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %55 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %64 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %68 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %71 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %72 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ocrdma_mbx_alloc_lkey(%struct.ocrdma_dev* %70, %struct.TYPE_4__* %72, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %6
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %108

80:                                               ; preds = %6
  %81 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %82 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %86 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %89 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %80
  %94 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %95 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93, %80
  %100 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %101 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %105 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %107

107:                                              ; preds = %99, %93
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %78
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @ocrdma_mbx_alloc_lkey(%struct.ocrdma_dev*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
