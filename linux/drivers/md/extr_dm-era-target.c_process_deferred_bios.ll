; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_process_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_process_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era = type { %struct.TYPE_2__*, i32, %struct.bio_list }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.era*)* @process_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_deferred_bios(%struct.era* %0) #0 {
  %2 = alloca %struct.era*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_list, align 4
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.era* %0, %struct.era** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @bio_list_init(%struct.bio_list* %4)
  %10 = call i32 @bio_list_init(%struct.bio_list* %5)
  %11 = load %struct.era*, %struct.era** %2, align 8
  %12 = getelementptr inbounds %struct.era, %struct.era* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.era*, %struct.era** %2, align 8
  %15 = getelementptr inbounds %struct.era, %struct.era* %14, i32 0, i32 2
  %16 = call i32 @bio_list_merge(%struct.bio_list* %4, %struct.bio_list* %15)
  %17 = load %struct.era*, %struct.era** %2, align 8
  %18 = getelementptr inbounds %struct.era, %struct.era* %17, i32 0, i32 2
  %19 = call i32 @bio_list_init(%struct.bio_list* %18)
  %20 = load %struct.era*, %struct.era** %2, align 8
  %21 = getelementptr inbounds %struct.era, %struct.era* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  br label %23

23:                                               ; preds = %48, %1
  %24 = call %struct.bio* @bio_list_pop(%struct.bio_list* %4)
  store %struct.bio* %24, %struct.bio** %6, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.era*, %struct.era** %2, align 8
  %28 = getelementptr inbounds %struct.era, %struct.era* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.era*, %struct.era** %2, align 8
  %32 = getelementptr inbounds %struct.era, %struct.era* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.era*, %struct.era** %2, align 8
  %37 = load %struct.bio*, %struct.bio** %6, align 8
  %38 = call i32 @get_block(%struct.era* %36, %struct.bio* %37)
  %39 = call i32 @writeset_test_and_set(i32* %30, i32 %35, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %48

43:                                               ; preds = %26
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %42
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = call i32 @bio_list_add(%struct.bio_list* %5, %struct.bio* %49)
  br label %23

51:                                               ; preds = %23
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.era*, %struct.era** %2, align 8
  %56 = getelementptr inbounds %struct.era, %struct.era* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @metadata_commit(%struct.TYPE_2__* %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %70, %66
  %68 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %68, %struct.bio** %6, align 8
  %69 = icmp ne %struct.bio* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.bio*, %struct.bio** %6, align 8
  %72 = call i32 @bio_io_error(%struct.bio* %71)
  br label %67

73:                                               ; preds = %67
  br label %82

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %78, %74
  %76 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %76, %struct.bio** %6, align 8
  %77 = icmp ne %struct.bio* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.bio*, %struct.bio** %6, align 8
  %80 = call i32 @generic_make_request(%struct.bio* %79)
  br label %75

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %73
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @writeset_test_and_set(i32*, i32, i32) #1

declare dso_local i32 @get_block(%struct.era*, %struct.bio*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @metadata_commit(%struct.TYPE_2__*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
