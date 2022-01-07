; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_demux_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_demux_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { i32, i32, i32, %struct.dmxdev* }
%struct.dmxdev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32*, i32*)*, i32 (%struct.TYPE_3__*, i8*)* }
%struct.dmx_stc = type { i32, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@DMXDEV_STATE_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*)* @dvb_demux_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_demux_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dmxdev_filter*, align 8
  %9 = alloca %struct.dmxdev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %13, align 8
  store %struct.dmxdev_filter* %14, %struct.dmxdev_filter** %8, align 8
  %15 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %16 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %15, i32 0, i32 3
  %17 = load %struct.dmxdev*, %struct.dmxdev** %16, align 8
  store %struct.dmxdev* %17, %struct.dmxdev** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %21 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %224

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %216 [
    i32 129, label %29
    i32 128, label %56
    i32 131, label %73
    i32 130, label %92
    i32 132, label %111
    i32 138, label %129
    i32 137, label %150
    i32 141, label %180
    i32 134, label %198
  ]

29:                                               ; preds = %27
  %30 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %31 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %30, i32 0, i32 0
  %32 = call i64 @mutex_lock_interruptible(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %36 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %224

40:                                               ; preds = %29
  %41 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %42 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMXDEV_STATE_SET, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %51 = call i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter* %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %54 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %219

56:                                               ; preds = %27
  %57 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %58 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %57, i32 0, i32 0
  %59 = call i64 @mutex_lock_interruptible(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %63 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* @ERESTARTSYS, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %224

67:                                               ; preds = %56
  %68 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %69 = call i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter* %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %71 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %219

73:                                               ; preds = %27
  %74 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %75 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %74, i32 0, i32 0
  %76 = call i64 @mutex_lock_interruptible(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %80 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @ERESTARTSYS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %224

84:                                               ; preds = %73
  %85 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %86 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @dvb_dmxdev_filter_set(%struct.dmxdev* %85, %struct.dmxdev_filter* %86, i8* %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %90 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  br label %219

92:                                               ; preds = %27
  %93 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %94 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %93, i32 0, i32 0
  %95 = call i64 @mutex_lock_interruptible(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %99 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* @ERESTARTSYS, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %224

103:                                              ; preds = %92
  %104 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %105 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @dvb_dmxdev_pes_filter_set(%struct.dmxdev* %104, %struct.dmxdev_filter* %105, i8* %106)
  store i32 %107, i32* %11, align 4
  %108 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %109 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  br label %219

111:                                              ; preds = %27
  %112 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %113 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %112, i32 0, i32 0
  %114 = call i64 @mutex_lock_interruptible(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %118 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* @ERESTARTSYS, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %224

122:                                              ; preds = %111
  %123 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @dvb_dmxdev_set_buffer_size(%struct.dmxdev_filter* %123, i64 %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %127 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  br label %219

129:                                              ; preds = %27
  %130 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %131 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32 (%struct.TYPE_3__*, i8*)*, i32 (%struct.TYPE_3__*, i8*)** %133, align 8
  %135 = icmp ne i32 (%struct.TYPE_3__*, i8*)* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %219

139:                                              ; preds = %129
  %140 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %141 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32 (%struct.TYPE_3__*, i8*)*, i32 (%struct.TYPE_3__*, i8*)** %143, align 8
  %145 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %146 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 %144(%struct.TYPE_3__* %147, i8* %148)
  br label %219

150:                                              ; preds = %27
  %151 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %152 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_3__*, i32, i32*, i32*)*, i32 (%struct.TYPE_3__*, i32, i32*, i32*)** %154, align 8
  %156 = icmp ne i32 (%struct.TYPE_3__*, i32, i32*, i32*)* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %11, align 4
  br label %219

160:                                              ; preds = %150
  %161 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %162 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %161, i32 0, i32 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32 (%struct.TYPE_3__*, i32, i32*, i32*)*, i32 (%struct.TYPE_3__*, i32, i32*, i32*)** %164, align 8
  %166 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %167 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %166, i32 0, i32 1
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = bitcast i8* %169 to %struct.dmx_stc*
  %171 = getelementptr inbounds %struct.dmx_stc, %struct.dmx_stc* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = bitcast i8* %173 to %struct.dmx_stc*
  %175 = getelementptr inbounds %struct.dmx_stc, %struct.dmx_stc* %174, i32 0, i32 1
  %176 = load i8*, i8** %7, align 8
  %177 = bitcast i8* %176 to %struct.dmx_stc*
  %178 = getelementptr inbounds %struct.dmx_stc, %struct.dmx_stc* %177, i32 0, i32 0
  %179 = call i32 %165(%struct.TYPE_3__* %168, i32 %172, i32* %175, i32* %178)
  store i32 %179, i32* %11, align 4
  br label %219

180:                                              ; preds = %27
  %181 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %182 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %181, i32 0, i32 0
  %183 = call i64 @mutex_lock_interruptible(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @ERESTARTSYS, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %11, align 4
  br label %219

188:                                              ; preds = %180
  %189 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %190 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @dvb_dmxdev_add_pid(%struct.dmxdev* %189, %struct.dmxdev_filter* %190, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %196 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  br label %219

198:                                              ; preds = %27
  %199 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %200 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %199, i32 0, i32 0
  %201 = call i64 @mutex_lock_interruptible(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* @ERESTARTSYS, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %11, align 4
  br label %219

206:                                              ; preds = %198
  %207 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %208 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %209 = load i8*, i8** %7, align 8
  %210 = bitcast i8* %209 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @dvb_dmxdev_remove_pid(%struct.dmxdev* %207, %struct.dmxdev_filter* %208, i32 %211)
  store i32 %212, i32* %11, align 4
  %213 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %8, align 8
  %214 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %213, i32 0, i32 0
  %215 = call i32 @mutex_unlock(i32* %214)
  br label %219

216:                                              ; preds = %27
  %217 = load i32, i32* @ENOTTY, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %11, align 4
  br label %219

219:                                              ; preds = %216, %206, %203, %188, %185, %160, %157, %139, %136, %122, %103, %84, %67, %52
  %220 = load %struct.dmxdev*, %struct.dmxdev** %9, align 8
  %221 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load i32, i32* %11, align 4
  store i32 %223, i32* %4, align 4
  br label %224

224:                                              ; preds = %219, %116, %97, %78, %61, %34, %24
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_set(%struct.dmxdev*, %struct.dmxdev_filter*, i8*) #1

declare dso_local i32 @dvb_dmxdev_pes_filter_set(%struct.dmxdev*, %struct.dmxdev_filter*, i8*) #1

declare dso_local i32 @dvb_dmxdev_set_buffer_size(%struct.dmxdev_filter*, i64) #1

declare dso_local i32 @dvb_dmxdev_add_pid(%struct.dmxdev*, %struct.dmxdev_filter*, i32) #1

declare dso_local i32 @dvb_dmxdev_remove_pid(%struct.dmxdev*, %struct.dmxdev_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
