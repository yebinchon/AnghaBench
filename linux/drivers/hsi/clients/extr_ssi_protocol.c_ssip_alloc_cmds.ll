; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_alloc_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_alloc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssi_protocol = type { i32, i32 }
%struct.hsi_msg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SSIP_MAX_CMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssi_protocol*)* @ssip_alloc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssip_alloc_cmds(%struct.ssi_protocol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssi_protocol*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ssi_protocol* %0, %struct.ssi_protocol** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SSIP_MAX_CMDS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hsi_msg* @hsi_alloc_msg(i32 1, i32 %12)
  store %struct.hsi_msg* %13, %struct.hsi_msg** %4, align 8
  %14 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %15 = icmp ne %struct.hsi_msg* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %46

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc(i32 4, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %24 = call i32 @hsi_free_msg(%struct.hsi_msg* %23)
  br label %46

25:                                               ; preds = %17
  %26 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %27 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @sg_init_one(i32 %29, i32* %30, i32 4)
  %32 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %33 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %38 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %37, i32 0, i32 0
  %39 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %40 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %7

45:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %51

46:                                               ; preds = %22, %16
  %47 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %48 = call i32 @ssip_free_cmds(%struct.ssi_protocol* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

declare dso_local i32 @sg_init_one(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ssip_free_cmds(%struct.ssi_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
