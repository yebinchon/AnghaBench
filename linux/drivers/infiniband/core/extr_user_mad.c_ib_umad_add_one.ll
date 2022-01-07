; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_ib_umad_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_ib_umad_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_umad_device = type { i32*, i32 }

@ports = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@umad_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_umad_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_umad_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_umad_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %9 = call i32 @rdma_start_port(%struct.ib_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = call i32 @rdma_end_port(%struct.ib_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %13 = load i32, i32* @ports, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = call i32 @struct_size(%struct.ib_umad_device* %12, i32 %13, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ib_umad_device* @kzalloc(i32 %18, i32 %19)
  store %struct.ib_umad_device* %20, %struct.ib_umad_device** %3, align 8
  %21 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %22 = icmp ne %struct.ib_umad_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %94

24:                                               ; preds = %1
  %25 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %26 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %25, i32 0, i32 1
  %27 = call i32 @kref_init(i32* %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %57, %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @rdma_cap_ib_mad(%struct.ib_device* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %57

39:                                               ; preds = %33
  %40 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %43 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %44 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = call i64 @ib_umad_init_port(%struct.ib_device* %40, i32 %41, %struct.ib_umad_device* %42, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %68

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %38
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %91

64:                                               ; preds = %60
  %65 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %66 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %67 = call i32 @ib_set_client_data(%struct.ib_device* %65, i32* @umad_client, %struct.ib_umad_device* %66)
  br label %94

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %80, %79, %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @rdma_cap_ib_mad(%struct.ib_device* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %69

80:                                               ; preds = %74
  %81 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %82 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = call i32 @ib_umad_kill_port(i32* %88)
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %93 = call i32 @ib_umad_dev_put(%struct.ib_umad_device* %92)
  br label %94

94:                                               ; preds = %91, %64, %23
  ret void
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local %struct.ib_umad_device* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ib_umad_device*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rdma_cap_ib_mad(%struct.ib_device*, i32) #1

declare dso_local i64 @ib_umad_init_port(%struct.ib_device*, i32, %struct.ib_umad_device*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_umad_device*) #1

declare dso_local i32 @ib_umad_kill_port(i32*) #1

declare dso_local i32 @ib_umad_dev_put(%struct.ib_umad_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
