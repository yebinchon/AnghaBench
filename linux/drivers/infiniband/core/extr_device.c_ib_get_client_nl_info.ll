; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_get_client_nl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_get_client_nl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_client_nl_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_client_nl_info(%struct.ib_device* %0, i8* %1, %struct.ib_client_nl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ib_client_nl_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ib_client_nl_info* %2, %struct.ib_client_nl_info** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = icmp ne %struct.ib_device* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %15 = call i32 @__ib_get_client_nl_info(%struct.ib_device* %12, i8* %13, %struct.ib_client_nl_info* %14)
  store i32 %15, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %19 = call i32 @__ib_get_global_client_nl_info(i8* %17, %struct.ib_client_nl_info* %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %20
  %34 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %35 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %31, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @__ib_get_client_nl_info(%struct.ib_device*, i8*, %struct.ib_client_nl_info*) #1

declare dso_local i32 @__ib_get_global_client_nl_info(i8*, %struct.ib_client_nl_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
