; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_packet_v7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_packet_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_fields = type { i32, i8, i8, i8, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.psmouse = type { %struct.alps_data* }
%struct.alps_data = type { i32 }

@V7_PACKET_ID_IDLE = common dso_local global i8 0, align 1
@V7_PACKET_ID_UNKNOWN = common dso_local global i8 0, align 1
@V7_PACKET_ID_NEW = common dso_local global i8 0, align 1
@V7_PACKET_ID_TWO = common dso_local global i8 0, align 1
@ALPS_BUTTONPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_fields*, i8*, %struct.psmouse*)* @alps_decode_packet_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_decode_packet_v7(%struct.alps_fields* %0, i8* %1, %struct.psmouse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alps_fields*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.psmouse*, align 8
  %8 = alloca %struct.alps_data*, align 8
  %9 = alloca i8, align 1
  store %struct.alps_fields* %0, %struct.alps_fields** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.psmouse* %2, %struct.psmouse** %7, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load %struct.alps_data*, %struct.alps_data** %11, align 8
  store %struct.alps_data* %12, %struct.alps_data** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call zeroext i8 @alps_get_packet_id_v7(i8* %13)
  store i8 %14, i8* %9, align 1
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @V7_PACKET_ID_IDLE, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %178

21:                                               ; preds = %3
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @V7_PACKET_ID_UNKNOWN, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %178

28:                                               ; preds = %21
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @V7_PACKET_ID_NEW, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %178

35:                                               ; preds = %28
  %36 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %37 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %9, align 1
  %41 = call i32 @alps_get_finger_coordinate_v7(%struct.TYPE_3__* %38, i8* %39, i8 zeroext %40)
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @V7_PACKET_ID_TWO, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %49 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @alps_get_mt_count(%struct.TYPE_3__* %50)
  %52 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %53 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %63

54:                                               ; preds = %35
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 3
  %60 = add nsw i32 3, %59
  %61 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %62 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %47
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 128
  %69 = ashr i32 %68, 7
  %70 = trunc i32 %69 to i8
  %71 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %72 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %71, i32 0, i32 1
  store i8 %70, i8* %72, align 4
  %73 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  %74 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ALPS_BUTTONPAD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %63
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %88 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %79
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 16
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %100 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %91
  br label %123

104:                                              ; preds = %63
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 32
  %110 = ashr i32 %109, 5
  %111 = trunc i32 %110 to i8
  %112 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %113 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %112, i32 0, i32 2
  store i8 %111, i8* %113, align 1
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 16
  %119 = ashr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %122 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %121, i32 0, i32 3
  store i8 %120, i8* %122, align 2
  br label %123

123:                                              ; preds = %104, %103
  %124 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %125 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %177

128:                                              ; preds = %123
  %129 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %130 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %129, i32 0, i32 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %177

136:                                              ; preds = %128
  %137 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %138 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %137, i32 0, i32 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %136
  %145 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %146 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %145, i32 0, i32 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %152 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %151, i32 0, i32 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i64 %150, i64* %155, align 8
  %156 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %157 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %156, i32 0, i32 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %163 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %162, i32 0, i32 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i64 %161, i64* %166, align 8
  %167 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %168 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %167, i32 0, i32 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %173 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %172, i32 0, i32 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %144, %136, %128, %123
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %34, %27, %20
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local zeroext i8 @alps_get_packet_id_v7(i8*) #1

declare dso_local i32 @alps_get_finger_coordinate_v7(%struct.TYPE_3__*, i8*, i8 zeroext) #1

declare dso_local i32 @alps_get_mt_count(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
