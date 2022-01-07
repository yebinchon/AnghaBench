; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }

@kfd_locked = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"KFD suspend / resume ref. error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd2kfd_resume(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %6 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %7 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %13 = call i32 @kfd_resume(%struct.kfd_dev* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %11
  %19 = call i32 @atomic_dec_return(i32* @kfd_locked)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ONCE(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 (...) @kfd_resume_all_processes()
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %16, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @kfd_resume(%struct.kfd_dev*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @kfd_resume_all_processes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
