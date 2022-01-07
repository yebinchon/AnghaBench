; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_register_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_register_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.komeda_dev*, %struct.seq_file*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @komeda_register_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_register_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.komeda_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  store %struct.komeda_dev* %9, %struct.komeda_dev** %5, align 8
  %10 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %11 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.komeda_dev*, %struct.seq_file*)*, i32 (%struct.komeda_dev*, %struct.seq_file*)** %13, align 8
  %15 = icmp ne i32 (%struct.komeda_dev*, %struct.seq_file*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %18 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.komeda_dev*, %struct.seq_file*)*, i32 (%struct.komeda_dev*, %struct.seq_file*)** %20, align 8
  %22 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 %21(%struct.komeda_dev* %22, %struct.seq_file* %23)
  br label %25

25:                                               ; preds = %16, %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %29 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %34 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 @komeda_pipeline_dump_register(i32 %39, %struct.seq_file* %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %26

45:                                               ; preds = %26
  ret i32 0
}

declare dso_local i32 @komeda_pipeline_dump_register(i32, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
