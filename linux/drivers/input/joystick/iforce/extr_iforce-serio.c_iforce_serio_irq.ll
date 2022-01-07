; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.iforce_serio = type { i32, i8, i8, i8, i8*, i8, i8, i64, i32, %struct.iforce }
%struct.iforce = type { i32, i32 }

@IFORCE_MAX_LENGTH = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @iforce_serio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_serio_irq(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.iforce_serio*, align 8
  %8 = alloca %struct.iforce*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.iforce_serio* @serio_get_drvdata(%struct.serio* %9)
  store %struct.iforce_serio* %10, %struct.iforce_serio** %7, align 8
  %11 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %12 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %11, i32 0, i32 9
  store %struct.iforce* %12, %struct.iforce** %8, align 8
  %13 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %14 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 43
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %23 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  br label %164

25:                                               ; preds = %3
  %26 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %27 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 4
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 255
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %40 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %45

41:                                               ; preds = %34, %30
  %42 = load i8, i8* %5, align 1
  %43 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %44 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %43, i32 0, i32 1
  store i8 %42, i8* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  br label %164

46:                                               ; preds = %25
  %47 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %48 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @IFORCE_MAX_LENGTH, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %59 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %61 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %60, i32 0, i32 1
  store i8 0, i8* %61, align 4
  br label %66

62:                                               ; preds = %51
  %63 = load i8, i8* %5, align 1
  %64 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %65 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %64, i32 0, i32 2
  store i8 %63, i8* %65, align 1
  br label %66

66:                                               ; preds = %62, %57
  br label %164

67:                                               ; preds = %46
  %68 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %69 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %68, i32 0, i32 3
  %70 = load i8, i8* %69, align 2
  %71 = zext i8 %70 to i32
  %72 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %73 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  %78 = load i8, i8* %5, align 1
  %79 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %80 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %83 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %82, i32 0, i32 3
  %84 = load i8, i8* %83, align 2
  %85 = add i8 %84, 1
  store i8 %85, i8* %83, align 2
  %86 = zext i8 %84 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  store i8 %78, i8* %87, align 1
  %88 = load i8, i8* %5, align 1
  %89 = zext i8 %88 to i64
  %90 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %91 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %164

94:                                               ; preds = %67
  %95 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %96 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %95, i32 0, i32 3
  %97 = load i8, i8* %96, align 2
  %98 = zext i8 %97 to i32
  %99 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %100 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %163

104:                                              ; preds = %94
  %105 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %106 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %105, i32 0, i32 5
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %110 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 4
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %104
  %115 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %116 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %115, i32 0, i32 5
  store i8 0, i8* %116, align 8
  %117 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %118 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %121 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* @IFORCE_MAX_LENGTH, align 1
  %124 = call i32 @memcpy(i32 %119, i8* %122, i8 zeroext %123)
  %125 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %126 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %125, i32 0, i32 2
  %127 = load i8, i8* %126, align 1
  %128 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %129 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %128, i32 0, i32 6
  store i8 %127, i8* %129, align 1
  %130 = load %struct.iforce*, %struct.iforce** %8, align 8
  %131 = getelementptr inbounds %struct.iforce, %struct.iforce* %130, i32 0, i32 1
  %132 = call i32 @wake_up(i32* %131)
  br label %152

133:                                              ; preds = %104
  %134 = load %struct.iforce*, %struct.iforce** %8, align 8
  %135 = getelementptr inbounds %struct.iforce, %struct.iforce* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.iforce*, %struct.iforce** %8, align 8
  %141 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %142 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %141, i32 0, i32 1
  %143 = load i8, i8* %142, align 4
  %144 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %145 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %148 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %147, i32 0, i32 2
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @iforce_process_packet(%struct.iforce* %140, i8 zeroext %143, i8* %146, i8 zeroext %149)
  br label %151

151:                                              ; preds = %139, %133
  br label %152

152:                                              ; preds = %151, %114
  %153 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %154 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %156 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %155, i32 0, i32 1
  store i8 0, i8* %156, align 4
  %157 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %158 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %157, i32 0, i32 2
  store i8 0, i8* %158, align 1
  %159 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %160 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %159, i32 0, i32 3
  store i8 0, i8* %160, align 2
  %161 = load %struct.iforce_serio*, %struct.iforce_serio** %7, align 8
  %162 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %161, i32 0, i32 7
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %152, %94
  br label %164

164:                                              ; preds = %163, %77, %66, %45, %24
  %165 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %165
}

declare dso_local %struct.iforce_serio* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @memcpy(i32, i8*, i8 zeroext) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iforce_process_packet(%struct.iforce*, i8 zeroext, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
