; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivars_sysfs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivars_sysfs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@efivar_sysfs_destroy = common dso_local global i32 0, align 4
@efivar_sysfs_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"efivars: Failed to destroy sysfs entries\0A\00", align 1
@efivars_new_var = common dso_local global i64 0, align 8
@efivars_kset = common dso_local global %struct.TYPE_3__* null, align 8
@efivars_del_var = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @efivars_sysfs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efivars_sysfs_exit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @efivar_sysfs_destroy, align 4
  %3 = call i32 @__efivar_entry_iter(i32 %2, i32* @efivar_sysfs_list, i32* null, i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %31

8:                                                ; preds = %0
  %9 = load i64, i64* @efivars_new_var, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @efivars_kset, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* @efivars_new_var, align 8
  %15 = call i32 @sysfs_remove_bin_file(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i64, i64* @efivars_del_var, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @efivars_kset, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* @efivars_del_var, align 8
  %23 = call i32 @sysfs_remove_bin_file(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i64, i64* @efivars_new_var, align 8
  %26 = call i32 @kfree(i64 %25)
  %27 = load i64, i64* @efivars_del_var, align 8
  %28 = call i32 @kfree(i64 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @efivars_kset, align 8
  %30 = call i32 @kset_unregister(%struct.TYPE_3__* %29)
  br label %31

31:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @__efivar_entry_iter(i32, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @kset_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
