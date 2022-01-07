; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_mlx4_ib_device_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_mlx4_ib_device_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i8*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"iov\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"mlx4_ib_device_register_sysfs error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_device_register_sysfs(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mlx4_is_master(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %78

27:                                               ; preds = %12
  %28 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32* @kobject_get(i8* %30)
  %32 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %73

42:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %44, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @add_port_entries(%struct.mlx4_ib_dev* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %68

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %63 = call i32 @register_pkey_tree(%struct.mlx4_ib_dev* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %82

68:                                               ; preds = %66, %56
  %69 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @kobject_put(i8* %71)
  br label %73

73:                                               ; preds = %68, %39
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @kobject_put(i8* %76)
  br label %78

78:                                               ; preds = %73, %24
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %67, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local i8* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32* @kobject_get(i8*) #1

declare dso_local i32 @add_port_entries(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @register_pkey_tree(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @kobject_put(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
