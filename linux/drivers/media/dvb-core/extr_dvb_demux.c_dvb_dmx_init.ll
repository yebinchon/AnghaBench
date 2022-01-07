; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux = type { i32, i32, i32*, i32, i32, i64, i64, i64, i64, i64, i32, i32**, i32, i32*, %struct.TYPE_3__*, %struct.TYPE_4__*, i64, %struct.dmx_demux }
%struct.TYPE_3__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.dmx_demux = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dvb_demux*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@DMX_STATE_FREE = common dso_local global i8* null, align 8
@MAX_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Couldn't allocate memory for TS/TEI check. Disabling it\0A\00", align 1
@DMX_PES_OTHER = common dso_local global i32 0, align 4
@dvb_dmx_crc32 = common dso_local global i64 0, align 8
@dvb_dmx_memcopy = common dso_local global i64 0, align 8
@dvbdmx_open = common dso_local global i32 0, align 4
@dvbdmx_close = common dso_local global i32 0, align 4
@dvbdmx_write = common dso_local global i32 0, align 4
@dvbdmx_allocate_ts_feed = common dso_local global i32 0, align 4
@dvbdmx_release_ts_feed = common dso_local global i32 0, align 4
@dvbdmx_allocate_section_feed = common dso_local global i32 0, align 4
@dvbdmx_release_section_feed = common dso_local global i32 0, align 4
@dvbdmx_add_frontend = common dso_local global i32 0, align 4
@dvbdmx_remove_frontend = common dso_local global i32 0, align 4
@dvbdmx_get_frontends = common dso_local global i32 0, align 4
@dvbdmx_connect_frontend = common dso_local global i32 0, align 4
@dvbdmx_disconnect_frontend = common dso_local global i32 0, align 4
@dvbdmx_get_pes_pids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_dmx_init(%struct.dvb_demux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmx_demux*, align 8
  store %struct.dvb_demux* %0, %struct.dvb_demux** %3, align 8
  %6 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %6, i32 0, i32 17
  store %struct.dmx_demux* %7, %struct.dmx_demux** %5, align 8
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %8, i32 0, i32 13
  store i32* null, i32** %9, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 16
  store i64 0, i64* %11, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @array_size(i32 4, i32 %14)
  %16 = call i8* @vmalloc(i64 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  %18 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %18, i32 0, i32 15
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %20, i32 0, i32 15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %218

27:                                               ; preds = %1
  %28 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @array_size(i32 4, i32 %30)
  %32 = call i8* @vmalloc(i64 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_3__*
  %34 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %34, i32 0, i32 14
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %36, i32 0, i32 14
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %27
  %41 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %41, i32 0, i32 15
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @vfree(%struct.TYPE_4__* %43)
  %45 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %45, i32 0, i32 15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %218

49:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i8*, i8** @DMX_STATE_FREE, align 8
  %58 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %59 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %58, i32 0, i32 15
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i8* %57, i8** %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %66, i32 0, i32 15
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 8
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %50

76:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load i8*, i8** @DMX_STATE_FREE, align 8
  %85 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %86 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %85, i32 0, i32 14
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i8* %84, i8** %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %94 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %93, i32 0, i32 14
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load i64, i64* @MAX_PID, align 8
  %105 = add nsw i64 %104, 1
  %106 = call i8* @vmalloc(i64 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %108, i32 0, i32 13
  store i32* %107, i32** %109, align 8
  %110 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %111 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %110, i32 0, i32 13
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %103
  %117 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %118 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %117, i32 0, i32 12
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %137, %116
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @DMX_PES_OTHER, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %126 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %125, i32 0, i32 11
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  store i32* null, i32** %130, align 8
  %131 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %132 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 65535, i32* %136, align 4
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %120

140:                                              ; preds = %120
  %141 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %142 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %141, i32 0, i32 10
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %145 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %144, i32 0, i32 9
  store i64 0, i64* %145, align 8
  %146 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %147 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %146, i32 0, i32 8
  store i64 0, i64* %147, align 8
  %148 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %149 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %148, i32 0, i32 7
  store i64 0, i64* %149, align 8
  %150 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %151 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %140
  %155 = load i64, i64* @dvb_dmx_crc32, align 8
  %156 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %157 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %156, i32 0, i32 6
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %154, %140
  %159 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %160 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load i64, i64* @dvb_dmx_memcopy, align 8
  %165 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %166 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %165, i32 0, i32 5
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %158
  %168 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %169 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %168, i32 0, i32 14
  store i32* null, i32** %169, align 8
  %170 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %171 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %172 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %171, i32 0, i32 13
  store %struct.dvb_demux* %170, %struct.dvb_demux** %172, align 8
  %173 = load i32, i32* @dvbdmx_open, align 4
  %174 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %175 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %174, i32 0, i32 12
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @dvbdmx_close, align 4
  %177 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %178 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %177, i32 0, i32 11
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @dvbdmx_write, align 4
  %180 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %181 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %180, i32 0, i32 10
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @dvbdmx_allocate_ts_feed, align 4
  %183 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %184 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %183, i32 0, i32 9
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @dvbdmx_release_ts_feed, align 4
  %186 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %187 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @dvbdmx_allocate_section_feed, align 4
  %189 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %190 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @dvbdmx_release_section_feed, align 4
  %192 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %193 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @dvbdmx_add_frontend, align 4
  %195 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %196 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @dvbdmx_remove_frontend, align 4
  %198 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %199 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @dvbdmx_get_frontends, align 4
  %201 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %202 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* @dvbdmx_connect_frontend, align 4
  %204 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %205 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* @dvbdmx_disconnect_frontend, align 4
  %207 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %208 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* @dvbdmx_get_pes_pids, align 4
  %210 = load %struct.dmx_demux*, %struct.dmx_demux** %5, align 8
  %211 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %213 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %212, i32 0, i32 4
  %214 = call i32 @mutex_init(i32* %213)
  %215 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %216 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %215, i32 0, i32 3
  %217 = call i32 @spin_lock_init(i32* %216)
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %167, %40, %24
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i64 @array_size(i32, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
