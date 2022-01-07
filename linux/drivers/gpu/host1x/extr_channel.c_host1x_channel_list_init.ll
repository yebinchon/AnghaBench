; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_channel_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_channel_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_channel_list = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_channel_list_init(%struct.host1x_channel_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_channel_list*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x_channel_list* %0, %struct.host1x_channel_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kcalloc(i32 %6, i32 4, i32 %7)
  %9 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %10 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %12 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BITS_TO_LONGS(i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 8, i32 %21)
  %23 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %24 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %26 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %18
  %30 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %31 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @kfree(i8* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %18
  %37 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %38 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bitmap_zero(i8* %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %29, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @bitmap_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
