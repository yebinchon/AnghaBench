; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_query_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ocrdma_ah = type { i32, %struct.ocrdma_av* }
%struct.ocrdma_av = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_grh = type { i32*, i32, i32 }

@OCRDMA_AV_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.ocrdma_ah*, align 8
  %6 = alloca %struct.ocrdma_av*, align 8
  %7 = alloca %struct.ocrdma_grh*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %9 = call %struct.ocrdma_ah* @get_ocrdma_ah(%struct.ib_ah* %8)
  store %struct.ocrdma_ah* %9, %struct.ocrdma_ah** %5, align 8
  %10 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %11 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %10, i32 0, i32 1
  %12 = load %struct.ocrdma_av*, %struct.ocrdma_av** %11, align 8
  store %struct.ocrdma_av* %12, %struct.ocrdma_av** %6, align 8
  %13 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %14 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %19 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %18, i32 0, i32 1
  %20 = load %struct.ocrdma_av*, %struct.ocrdma_av** %19, align 8
  %21 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OCRDMA_AV_VALID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %27, i32 0, i32 1
  %29 = load %struct.ocrdma_av*, %struct.ocrdma_av** %28, align 8
  %30 = bitcast %struct.ocrdma_av* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = bitcast i32* %31 to %struct.ocrdma_grh*
  store %struct.ocrdma_grh* %32, %struct.ocrdma_grh** %7, align 8
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %34 = load %struct.ocrdma_av*, %struct.ocrdma_av** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be16_to_cpu(i32 %37)
  %39 = ashr i32 %38, 13
  %40 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %33, i32 %39)
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %43 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %42, i32 0, i32 1
  %44 = load %struct.ocrdma_av*, %struct.ocrdma_av** %43, align 8
  %45 = bitcast %struct.ocrdma_av* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = bitcast i32* %46 to %struct.ocrdma_grh*
  store %struct.ocrdma_grh* %47, %struct.ocrdma_grh** %7, align 8
  %48 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %49 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %48, i32 0)
  br label %50

50:                                               ; preds = %41, %26
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %52 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %53 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %5, align 8
  %57 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %60 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = and i32 %62, 255
  %64 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %65 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = ashr i32 %67, 24
  %69 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %51, i32* null, i32 %55, i32 %58, i32 %63, i32 %68)
  %70 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %71 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %7, align 8
  %72 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %70, i32* %74)
  ret i32 0
}

declare dso_local %struct.ocrdma_ah* @get_ocrdma_ah(%struct.ib_ah*) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
