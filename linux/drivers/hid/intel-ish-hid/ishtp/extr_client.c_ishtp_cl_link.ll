; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32, i32, i32, %struct.TYPE_2__*, %struct.ishtp_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ishtp_device = type { i64, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISHTP_MAX_OPEN_HANDLE_COUNT = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i32 0, align 4
@ISHTP_CLIENTS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"id exceeded %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ISHTP_DEV_ENABLED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ISHTP_CL_INITIALIZING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_cl_link(%struct.ishtp_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca %struct.ishtp_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %10 = icmp ne %struct.ishtp_cl* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %13 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %12, i32 0, i32 4
  %14 = load %struct.ishtp_device*, %struct.ishtp_device** %13, align 8
  %15 = icmp ne %struct.ishtp_device* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %17
  %26 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %27 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %26, i32 0, i32 4
  %28 = load %struct.ishtp_device*, %struct.ishtp_device** %27, align 8
  store %struct.ishtp_device* %28, %struct.ishtp_device** %4, align 8
  %29 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %30 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %29, i32 0, i32 2
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %34 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ISHTP_MAX_OPEN_HANDLE_COUNT, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EMFILE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %102

41:                                               ; preds = %25
  %42 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %43 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ISHTP_CLIENTS_MAX, align 4
  %46 = call i32 @find_first_zero_bit(i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ISHTP_CLIENTS_MAX, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %52 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %51, i32 0, i32 2
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %56 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* @ISHTP_CLIENTS_MAX, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %108

63:                                               ; preds = %41
  %64 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %65 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %70 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %72 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %71, i32 0, i32 3
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %76 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ISHTP_DEV_ENABLED, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %63
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %97

83:                                               ; preds = %63
  %84 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %85 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %84, i32 0, i32 2
  %86 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %87 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %86, i32 0, i32 5
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %91 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @set_bit(i32 %89, i32 %92)
  %94 = load i32, i32* @ISHTP_CL_INITIALIZING, align 4
  %95 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %96 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %83, %80
  %98 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %99 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %98, i32 0, i32 3
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %38
  %103 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %104 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %103, i32 0, i32 2
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %50, %22
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
