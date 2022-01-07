; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_alloc_any_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_alloc_any_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.rdma_bind_list = type { i32 }

@cma_alloc_any_port.last_used_port = internal global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rdma_id_private*)* @cma_alloc_any_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_alloc_any_port(i32 %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.rdma_bind_list*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.net*, %struct.net** %18, align 8
  store %struct.net* %19, %struct.net** %10, align 8
  %20 = load %struct.net*, %struct.net** %10, align 8
  %21 = call i32 @inet_get_local_port_range(%struct.net* %20, i32* %6, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = call i32 (...) @prandom_u32()
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %88, %2
  %32 = load i32, i32* @cma_alloc_any_port.last_used_port, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load %struct.net*, %struct.net** %10, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = trunc i32 %38 to i16
  %40 = call %struct.rdma_bind_list* @cma_ps_find(%struct.net* %36, i32 %37, i16 zeroext %39)
  store %struct.rdma_bind_list* %40, %struct.rdma_bind_list** %11, align 8
  %41 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %11, align 8
  %42 = icmp ne %struct.rdma_bind_list* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @cma_alloc_port(i32 %44, %struct.rdma_id_private* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %59

48:                                               ; preds = %35
  %49 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %11, align 8
  %50 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %51 = call i32 @cma_port_is_unique(%struct.rdma_bind_list* %49, %struct.rdma_id_private* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %11, align 8
  %56 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %57 = call i32 @cma_bind_port(%struct.rdma_bind_list* %55, %struct.rdma_id_private* %56)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* @cma_alloc_any_port.last_used_port, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EADDRNOTAVAIL, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %3, align 4
  br label %92

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %31

89:                                               ; preds = %72
  %90 = load i32, i32* @EADDRNOTAVAIL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %69
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @inet_get_local_port_range(%struct.net*, i32*, i32*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local %struct.rdma_bind_list* @cma_ps_find(%struct.net*, i32, i16 zeroext) #1

declare dso_local i32 @cma_alloc_port(i32, %struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_port_is_unique(%struct.rdma_bind_list*, %struct.rdma_id_private*) #1

declare dso_local i32 @cma_bind_port(%struct.rdma_bind_list*, %struct.rdma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
