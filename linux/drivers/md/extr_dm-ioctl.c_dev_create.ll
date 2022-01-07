; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32, i64*, i32, i32 }
%struct.mapped_device = type { i32 }

@DM_ANY_MINOR = common dso_local global i32 0, align 4
@DM_PERSISTENT_DEV_FLAG = common dso_local global i32 0, align 4
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_create(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mapped_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @DM_ANY_MINOR, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %13 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @check_name(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %22 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DM_PERSISTENT_DEV_FLAG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %29 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @huge_decode_dev(i32 %30)
  %32 = call i32 @MINOR(i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dm_create(i32 %34, %struct.mapped_device** %10)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %78

40:                                               ; preds = %33
  %41 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %42 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %45 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %51 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  br label %54

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i64* [ %52, %49 ], [ null, %53 ]
  %56 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %57 = call i32 @dm_hash_insert(i32 %43, i64* %55, %struct.mapped_device* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %62 = call i32 @dm_put(%struct.mapped_device* %61)
  %63 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %64 = call i32 @dm_destroy(%struct.mapped_device* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %78

66:                                               ; preds = %54
  %67 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %70 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %74 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %75 = call i32 @__dev_status(%struct.mapped_device* %73, %struct.dm_ioctl* %74)
  %76 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %77 = call i32 @dm_put(%struct.mapped_device* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %66, %60, %38, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @check_name(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @huge_decode_dev(i32) #1

declare dso_local i32 @dm_create(i32, %struct.mapped_device**) #1

declare dso_local i32 @dm_hash_insert(i32, i64*, %struct.mapped_device*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @dm_destroy(%struct.mapped_device*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
