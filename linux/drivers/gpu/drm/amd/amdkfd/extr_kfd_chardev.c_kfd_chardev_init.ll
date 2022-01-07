; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_chardev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_chardev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kfd_dev_name = common dso_local global i32 0, align 4
@kfd_fops = common dso_local global i32 0, align 4
@kfd_char_dev_major = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@kfd_class = common dso_local global i32 0, align 4
@kfd_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_chardev_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @kfd_dev_name, align 4
  %4 = call i32 @register_chrdev(i32 0, i32 %3, i32* @kfd_fops)
  store i32 %4, i32* @kfd_char_dev_major, align 4
  %5 = load i32, i32* @kfd_char_dev_major, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %39

9:                                                ; preds = %0
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = load i32, i32* @kfd_dev_name, align 4
  %12 = call i32 @class_create(i32 %10, i32 %11)
  store i32 %12, i32* @kfd_class, align 4
  %13 = load i32, i32* @kfd_class, align 4
  %14 = call i32 @PTR_ERR(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @kfd_class, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %35

19:                                               ; preds = %9
  %20 = load i32, i32* @kfd_class, align 4
  %21 = load i32, i32* @kfd_char_dev_major, align 4
  %22 = call i32 @MKDEV(i32 %21, i32 0)
  %23 = load i32, i32* @kfd_dev_name, align 4
  %24 = call i32 @device_create(i32 %20, i32* null, i32 %22, i32* null, i32 %23)
  store i32 %24, i32* @kfd_device, align 4
  %25 = load i32, i32* @kfd_device, align 4
  %26 = call i32 @PTR_ERR(i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* @kfd_device, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %41

32:                                               ; preds = %30
  %33 = load i32, i32* @kfd_class, align 4
  %34 = call i32 @class_destroy(i32 %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32, i32* @kfd_char_dev_major, align 4
  %37 = load i32, i32* @kfd_dev_name, align 4
  %38 = call i32 @unregister_chrdev(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %8
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @register_chrdev(i32, i32, i32*) #1

declare dso_local i32 @class_create(i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @class_destroy(i32) #1

declare dso_local i32 @unregister_chrdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
