; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_qp_attr_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_qp_attr_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_uverbs_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_copy_qp_attr_to_user(%struct.ib_device* %0, %struct.ib_uverbs_qp_attr* %1, %struct.ib_qp_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_uverbs_qp_attr*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_uverbs_qp_attr* %1, %struct.ib_uverbs_qp_attr** %5, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %6, align 8
  %7 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %8 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %7, i32 0, i32 24
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %11 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %10, i32 0, i32 29
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 23
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %15, i32 0, i32 28
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %17, i32 0, i32 22
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %20, i32 0, i32 27
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %22, i32 0, i32 21
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %26 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %25, i32 0, i32 26
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %27, i32 0, i32 20
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %30, i32 0, i32 25
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 19
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %35, i32 0, i32 24
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %37, i32 0, i32 18
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %40, i32 0, i32 23
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 17
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %45, i32 0, i32 22
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %50, i32 0, i32 21
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %52, i32 0, i32 15
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %57 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %56, i32 0, i32 20
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %58, i32 0, i32 15
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %62, i32 0, i32 19
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %64, i32 0, i32 15
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %69 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %68, i32 0, i32 18
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %74, i32 0, i32 17
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %76, i32 0, i32 15
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %80, i32 0, i32 16
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %83 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %83, i32 0, i32 15
  %85 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %85, i32 0, i32 14
  %87 = call i32 @ib_copy_ah_attr_to_user(%struct.ib_device* %82, i32* %84, i32* %86)
  %88 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %89 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %89, i32 0, i32 14
  %91 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %92 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %91, i32 0, i32 13
  %93 = call i32 @ib_copy_ah_attr_to_user(%struct.ib_device* %88, i32* %90, i32* %92)
  %94 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %95 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %98 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %103 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %108 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %118 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %120 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %123 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %128 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %133 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %135 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %138 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %140 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %143 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %145 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %148 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %153 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %155 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %158 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %5, align 8
  %160 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memset(i32 %161, i32 0, i32 4)
  ret void
}

declare dso_local i32 @ib_copy_ah_attr_to_user(%struct.ib_device*, i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
