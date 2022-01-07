; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remote_create_attr_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remote_create_attr_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_5__*, %struct.wacom_remote* }
%struct.TYPE_5__ = type { i32 }
%struct.wacom_remote = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot create sysfs group err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i32, i32)* @wacom_remote_create_attr_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_remote_create_attr_group(%struct.wacom* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wacom_remote*, align 8
  store %struct.wacom* %0, %struct.wacom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.wacom*, %struct.wacom** %5, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 1
  %12 = load %struct.wacom_remote*, %struct.wacom_remote** %11, align 8
  store %struct.wacom_remote* %12, %struct.wacom_remote** %9, align 8
  %13 = load %struct.wacom*, %struct.wacom** %5, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @devm_kasprintf(i32* %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.wacom_remote*, %struct.wacom_remote** %9, align 8
  %21 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32* %19, i32** %27, align 8
  %28 = load %struct.wacom_remote*, %struct.wacom_remote** %9, align 8
  %29 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %72

41:                                               ; preds = %3
  %42 = load %struct.wacom*, %struct.wacom** %5, align 8
  %43 = load %struct.wacom_remote*, %struct.wacom_remote** %9, align 8
  %44 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wacom_remote*, %struct.wacom_remote** %9, align 8
  %47 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @__wacom_devm_sysfs_create_group(%struct.wacom* %42, i32 %45, %struct.TYPE_6__* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %41
  %57 = load %struct.wacom_remote*, %struct.wacom_remote** %9, align 8
  %58 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.wacom*, %struct.wacom** %5, align 8
  %66 = getelementptr inbounds %struct.wacom, %struct.wacom* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @hid_err(%struct.TYPE_5__* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %56, %38
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32* @devm_kasprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @__wacom_devm_sysfs_create_group(%struct.wacom*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @hid_err(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
