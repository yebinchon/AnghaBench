; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.iforce*)* }
%struct.TYPE_5__ = type { i32, i32, i8** }
%struct.TYPE_4__ = type { i32 }

@XMIT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"not enough space in xmit buffer to send new packet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_send_packet(%struct.iforce* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iforce*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.iforce* %0, %struct.iforce** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @LO(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.iforce*, %struct.iforce** %5, align 8
  %18 = getelementptr inbounds %struct.iforce, %struct.iforce* %17, i32 0, i32 1
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.iforce*, %struct.iforce** %5, align 8
  %22 = getelementptr inbounds %struct.iforce, %struct.iforce* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.iforce*, %struct.iforce** %5, align 8
  %26 = getelementptr inbounds %struct.iforce, %struct.iforce* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @XMIT_SIZE, align 4
  %32 = call i32 @CIRC_SPACE(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 2
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load %struct.iforce*, %struct.iforce** %5, align 8
  %38 = getelementptr inbounds %struct.iforce, %struct.iforce* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.iforce*, %struct.iforce** %5, align 8
  %43 = getelementptr inbounds %struct.iforce, %struct.iforce* %42, i32 0, i32 1
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 -1, i32* %4, align 4
  br label %136

46:                                               ; preds = %3
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load %struct.iforce*, %struct.iforce** %5, align 8
  %52 = getelementptr inbounds %struct.iforce, %struct.iforce* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 2
  %57 = call i32 @XMIT_INC(i32 %54, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @HI(i32 %58)
  %60 = load %struct.iforce*, %struct.iforce** %5, align 8
  %61 = getelementptr inbounds %struct.iforce, %struct.iforce* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %59, i8** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @XMIT_INC(i32 %67, i32 1)
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @LO(i32 %69)
  %71 = load %struct.iforce*, %struct.iforce** %5, align 8
  %72 = getelementptr inbounds %struct.iforce, %struct.iforce* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %70, i8** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @XMIT_INC(i32 %78, i32 1)
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @XMIT_SIZE, align 4
  %83 = call i32 @CIRC_SPACE_TO_END(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %46
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %46
  %90 = load %struct.iforce*, %struct.iforce** %5, align 8
  %91 = getelementptr inbounds %struct.iforce, %struct.iforce* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @memcpy(i8** %96, i8* %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %89
  %104 = load %struct.iforce*, %struct.iforce** %5, align 8
  %105 = getelementptr inbounds %struct.iforce, %struct.iforce* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @memcpy(i8** %108, i8* %112, i32 %115)
  br label %117

117:                                              ; preds = %103, %89
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @XMIT_INC(i32 %118, i32 %119)
  %121 = load %struct.iforce*, %struct.iforce** %5, align 8
  %122 = getelementptr inbounds %struct.iforce, %struct.iforce* %121, i32 0, i32 1
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load %struct.iforce*, %struct.iforce** %5, align 8
  %129 = getelementptr inbounds %struct.iforce, %struct.iforce* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32 (%struct.iforce*)*, i32 (%struct.iforce*)** %131, align 8
  %133 = load %struct.iforce*, %struct.iforce** %5, align 8
  %134 = call i32 %132(%struct.iforce* %133)
  br label %135

135:                                              ; preds = %127, %117
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %36
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @LO(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @XMIT_INC(i32, i32) #1

declare dso_local i8* @HI(i32) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
