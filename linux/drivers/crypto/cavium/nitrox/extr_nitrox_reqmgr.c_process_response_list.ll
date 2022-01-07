; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_process_response_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_process_response_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_cmdq = type { i32, %struct.nitrox_device* }
%struct.nitrox_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nitrox_softreq = type { i8*, i32 (i8*, i32)*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@REQ_POSTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Request timeout, orh 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_cmdq*)* @process_response_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_response_list(%struct.nitrox_cmdq* %0) #0 {
  %2 = alloca %struct.nitrox_cmdq*, align 8
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.nitrox_softreq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  store %struct.nitrox_cmdq* %0, %struct.nitrox_cmdq** %2, align 8
  %10 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %11 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %10, i32 0, i32 1
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %11, align 8
  store %struct.nitrox_device* %12, %struct.nitrox_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %14 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %92, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %17
  %22 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %23 = call %struct.nitrox_softreq* @get_first_response_entry(%struct.nitrox_cmdq* %22)
  store %struct.nitrox_softreq* %23, %struct.nitrox_softreq** %4, align 8
  %24 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %25 = icmp ne %struct.nitrox_softreq* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %95

27:                                               ; preds = %21
  %28 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %29 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %28, i32 0, i32 4
  %30 = call i64 @atomic_read(i32* %29)
  %31 = load i64, i64* @REQ_POSTED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %95

34:                                               ; preds = %27
  %35 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %36 = call i32 @sr_completed(%struct.nitrox_softreq* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %40 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %43 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cmd_timeout(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %95

48:                                               ; preds = %38
  %49 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %50 = call i32 @DEV(%struct.nitrox_device* %49)
  %51 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %52 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @READ_ONCE(i32 %55)
  %57 = call i32 @dev_err_ratelimited(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %48, %34
  %59 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %60 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %59, i32 0, i32 0
  %61 = call i32 @atomic_dec(i32* %60)
  %62 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %63 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @atomic64_inc(i32* %64)
  %66 = call i32 (...) @smp_mb__after_atomic()
  %67 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %68 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %69 = call i32 @response_list_del(%struct.nitrox_softreq* %67, %struct.nitrox_cmdq* %68)
  %70 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %71 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @READ_ONCE(i32 %74)
  %76 = and i32 %75, 255
  store i32 %76, i32* %6, align 4
  %77 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %78 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %77, i32 0, i32 1
  %79 = load i32 (i8*, i32)*, i32 (i8*, i32)** %78, align 8
  store i32 (i8*, i32)* %79, i32 (i8*, i32)** %8, align 8
  %80 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %81 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %9, align 8
  %83 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %84 = call i32 @softreq_destroy(%struct.nitrox_softreq* %83)
  %85 = load i32 (i8*, i32)*, i32 (i8*, i32)** %8, align 8
  %86 = icmp ne i32 (i8*, i32)* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %58
  %88 = load i32 (i8*, i32)*, i32 (i8*, i32)** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 %88(i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %58
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %17

95:                                               ; preds = %47, %33, %26, %17
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.nitrox_softreq* @get_first_response_entry(%struct.nitrox_cmdq*) #1

declare dso_local i32 @sr_completed(%struct.nitrox_softreq*) #1

declare dso_local i32 @cmd_timeout(i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @response_list_del(%struct.nitrox_softreq*, %struct.nitrox_cmdq*) #1

declare dso_local i32 @softreq_destroy(%struct.nitrox_softreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
