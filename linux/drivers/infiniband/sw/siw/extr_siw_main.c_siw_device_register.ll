; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_device = type { %struct.TYPE_2__*, i32, %struct.ib_device }
%struct.TYPE_2__ = type { i32 }
%struct.ib_device = type { i32 }

@siw_device_register.dev_id = internal global i32 1, align 4
@.str = private unnamed_addr constant [35 x i8] c"siw: device registration error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"HWaddr=%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_device*, i8*)* @siw_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_device_register(%struct.siw_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  store %struct.siw_device* %0, %struct.siw_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.siw_device*, %struct.siw_device** %4, align 8
  %9 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %8, i32 0, i32 2
  store %struct.ib_device* %9, %struct.ib_device** %6, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @ib_register_device(%struct.ib_device* %10, i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @siw_device_register.dev_id, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @siw_device_register.dev_id, align 4
  %22 = load %struct.siw_device*, %struct.siw_device** %4, align 8
  %23 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %25 = load %struct.siw_device*, %struct.siw_device** %4, align 8
  %26 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @siw_dbg(%struct.ib_device* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %19, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ib_register_device(%struct.ib_device*, i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @siw_dbg(%struct.ib_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
