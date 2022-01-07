; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_read_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_read_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_ah = type { i64, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ib_ud_header = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MTHCA_AH_ON_HCA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_read_ah(%struct.mthca_dev* %0, %struct.mthca_ah* %1, %struct.ib_ud_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_ah*, align 8
  %7 = alloca %struct.ib_ud_header*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_ah* %1, %struct.mthca_ah** %6, align 8
  store %struct.ib_ud_header* %2, %struct.ib_ud_header** %7, align 8
  %8 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %9 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MTHCA_AH_ON_HCA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %99

16:                                               ; preds = %3
  %17 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %18 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = ashr i32 %22, 28
  %24 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %25 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %28 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %33 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %36 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 127
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %43 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %46 = call i64 @mthca_ah_grh_present(%struct.mthca_ah* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %16
  %49 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %50 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  %55 = ashr i32 %54, 20
  %56 = and i32 %55, 255
  %57 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %58 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %61 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cpu_to_be32(i32 1048575)
  %66 = and i32 %64, %65
  %67 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %68 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %71 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %76 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 4
  %78 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %79 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %85 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.ib_ud_header*, %struct.ib_ud_header** %7, align 8
  %88 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %93 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32 %91, i32 %96, i32 16)
  br label %98

98:                                               ; preds = %48, %16
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %13
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @mthca_ah_grh_present(%struct.mthca_ah*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
