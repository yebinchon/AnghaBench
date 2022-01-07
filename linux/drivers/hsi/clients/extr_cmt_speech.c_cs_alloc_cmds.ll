; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_alloc_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_alloc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cs_hsi_iface = type { i32 }
%struct.hsi_msg = type { i32, %struct.cs_hsi_iface*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CS_MAX_CMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cs_char_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*)* @cs_alloc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_alloc_cmds(%struct.cs_hsi_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %3, align 8
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %8 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %7, i32 0, i32 0
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CS_MAX_CMDS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hsi_msg* @hsi_alloc_msg(i32 1, i32 %15)
  store %struct.hsi_msg* %16, %struct.hsi_msg** %4, align 8
  %17 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %18 = icmp ne %struct.hsi_msg* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %50

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmalloc(i32 4, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %27 = call i32 @hsi_free_msg(%struct.hsi_msg* %26)
  br label %50

28:                                               ; preds = %20
  %29 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %30 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @sg_init_one(i32 %32, i32* %33, i32 4)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 4
  %36 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %37 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %39 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %40 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %39, i32 0, i32 1
  store %struct.cs_hsi_iface* %38, %struct.cs_hsi_iface** %40, align 8
  %41 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %42 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %41, i32 0, i32 0
  %43 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %44 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %25, %19
  %51 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %52 = call i32 @cs_free_cmds(%struct.cs_hsi_iface* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

declare dso_local i32 @sg_init_one(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cs_free_cmds(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
