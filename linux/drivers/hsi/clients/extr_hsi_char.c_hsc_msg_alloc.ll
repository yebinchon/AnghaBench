; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hsi_msg* (i32)* @hsc_msg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hsi_msg* @hsc_msg_alloc(i32 %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hsi_msg* @hsi_alloc_msg(i32 1, i32 %6)
  store %struct.hsi_msg* %7, %struct.hsi_msg** %4, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %9 = icmp ne %struct.hsi_msg* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %19 = call i32 @hsi_free_msg(%struct.hsi_msg* %18)
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %22 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sg_init_one(i32 %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @kmemleak_ignore(i8* %28)
  %30 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  store %struct.hsi_msg* %30, %struct.hsi_msg** %2, align 8
  br label %32

31:                                               ; preds = %17, %10
  store %struct.hsi_msg* null, %struct.hsi_msg** %2, align 8
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  ret %struct.hsi_msg* %33
}

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

declare dso_local i32 @sg_init_one(i32, i8*, i32) #1

declare dso_local i32 @kmemleak_ignore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
