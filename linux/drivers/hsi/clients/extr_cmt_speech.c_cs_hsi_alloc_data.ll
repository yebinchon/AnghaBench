; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_alloc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_alloc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cs_hsi_iface = type { %struct.hsi_msg*, %struct.hsi_msg* }
%struct.hsi_msg = type { %struct.cs_hsi_iface*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs_char_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cs_hsi_data_destructor = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*)* @cs_hsi_alloc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_alloc_data(%struct.cs_hsi_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca %struct.hsi_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hsi_msg* @hsi_alloc_msg(i32 1, i32 %7)
  store %struct.hsi_msg* %8, %struct.hsi_msg** %5, align 8
  %9 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %10 = icmp ne %struct.hsi_msg* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0), align 4
  %16 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %17 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @cs_hsi_data_destructor, align 8
  %19 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %20 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %22 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %23 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %22, i32 0, i32 0
  store %struct.cs_hsi_iface* %21, %struct.cs_hsi_iface** %23, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.hsi_msg* @hsi_alloc_msg(i32 1, i32 %24)
  store %struct.hsi_msg* %25, %struct.hsi_msg** %4, align 8
  %26 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %27 = icmp ne %struct.hsi_msg* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %47

31:                                               ; preds = %14
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0), align 4
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %34 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @cs_hsi_data_destructor, align 8
  %36 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %37 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %39 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %40 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %39, i32 0, i32 0
  store %struct.cs_hsi_iface* %38, %struct.cs_hsi_iface** %40, align 8
  %41 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %42 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %43 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %42, i32 0, i32 1
  store %struct.hsi_msg* %41, %struct.hsi_msg** %43, align 8
  %44 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %45 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %46 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %45, i32 0, i32 0
  store %struct.hsi_msg* %44, %struct.hsi_msg** %46, align 8
  store i32 0, i32* %2, align 4
  br label %52

47:                                               ; preds = %28
  %48 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %49 = call i32 @hsi_free_msg(%struct.hsi_msg* %48)
  br label %50

50:                                               ; preds = %47, %11
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i32, i32) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
